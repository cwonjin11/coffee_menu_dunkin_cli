require "nokogiri" 
require "open-uri"
require_relative './menu.rb'

class DunkinCoffeeMenu::Scraper

    attr_accessor :menu, :item_url

    URL = "https://www.dunkindonuts.com/en/menu/espresso-and-coffee"

    def self.scrape_coffee_menu
        doc = Nokogiri::HTML(open(URL))
        menu = doc.css(".grid a")[0..13].text.upcase.strip.split("\n            \n        \n\n            \n\n            \n                ")
        menu.each do |anchor|           
            name = anchor #scrape_coffee_menu
            item_url = "https://www.dunkindonuts.com/en/menu/espresso-and-coffee/" + name.downcase.gsub(" ","-")
 
        DunkinCoffeeMenu::Menu.new(name, item_url)
        end
    end


    def self.scrape_subtitle(item_url, menu) 
        doc = Nokogiri::HTML(open(item_url))
        doc.css("div.teaser__content  div.teaser__subtitle").text.strip 
    end


    def self.scrape_description(item_url, menu)
        doc = Nokogiri::HTML(open(item_url))
        doc.css("div.teaser__text p").text.split(">")[1]
    end


    def self.scrape_allergens(item_url, menu)
        doc = Nokogiri::HTML(open(item_url))
        allergens =  doc.css("div.ingredients__disclaimer p").text.strip.gsub(/^\s*/, '') 
    end


end



  