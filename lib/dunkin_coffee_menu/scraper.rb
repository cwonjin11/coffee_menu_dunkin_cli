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



    # def self.scrape_ingredients(item_url, menu)
    #     doc = Nokogiri::HTML(open(item_url))
    #     doc.css("section.tabs__content p.ingredients__value").text \     
    # end



    # def self.scrape_calories(item_url, menu)
    #     doc = Nokogiri::HTML(open(item_url))
    #     doc.css("td.nutrition-facts__amount span.nutrition-facts__value").text  
    # end


    # def self.details
    #     self.scrape_details
    # end

    # def self.scrape_details
    #     details = []
    #     details << self.scrape_calories
    # #     details

    # end

       # binding.pry
        
        # doc.css("td.nutrition-facts__amount span.nutrition-facts__value").text  # <=  can't find calories
        # doc.css("section.tabs__content p.ingredients__value").text # <= can't find ingredients
        
        # binding.pry
        # calories = doc.search(" ")




        # details_1 = self.new
        # details_1

        # doc = Nokogiri::HTML(open(item_url, menu))
        # total calories = doc.css("span.nutrition-facts__value")

        # binding.pry

        # nutrition_fact = doc.css("div.teaser__text p").text.split(">")[1]
        # allergens = doc.css("div.teaser__text p").text.split(">")[1]
        # DunkinCoffeeMenu::Description.new(x, menu)



# Scraper.scrape_description


        # menu = doc.css(".grid a").text.upcase.strip.gsub(/\s\n+/, " ").split("  ").join("")
        # puts " #{index}. #{menu} "
        # menu[0..13].each do |m|
        #     menu_name = m.css("div")[1].text
           # binding.pry
       # end
       
        # [0..13].text.upcase.strip.gsub(/\s\n+/, " ").split("  ").join("")  
        # #binding.pry
      
        # list_of_menu = menu.each do |a| 
        # name =  a.text
        #     DunkinCoffeeMenu::Menu.new(name)
       
        
      # puts coffee_menu




    # def self.scrape_coffee_menu
    #     doc = Nokogiri::HTML(open(URL))
    #     menu = doc.css(".grid a")
    #     menu.each do |a|
    #         name = a.text.upcase.strip.split("\n            \n        \n\n            \n\n            \n                ")
    #         # path
    #         # url 

            # binding.pry
    #     DunkinCoffeeMenu::Menu.new(name)
    #     end
    # end

       # def self.scrape_item_page(item_url)
    #     item_url = "https://www.dunkindonuts.com/" + doc.css(".grid a")[0..13].attr("href").value

	# 	#Open Document
    #     doc = Nokogiri::HTML(open(item_url))
        

    # end

    # def estimated_time



    # end

    # def ingredients


    # end

    # def directions


    # end


        # binding.pry
        # puts "coffee details are here"
        # binding.pry
        # DunkinCoffeeMenu::Menu.new(name, item_url, description)
        
        # DunkinCoffeeMenu::Menu.new(name)
        
        # item_url = doc.css(".grid a")[0..13].map { |link| link['href'] }
        # item_url
       
        
        #doc.xpath('//div/a/@href').text.strip

                   
            
            # scraped each menu url
            # item_calories #scraped totla calories
                      
        
            # item_url = anchor.attribute("href")
        
            # descrpition = item_url.css("div.teaser__text p").text
                        # item_url = doc.css(".grid a")[0..13].map { |anchor| anchor['href'] }

          
            # item_url = "https://www.dunkindonuts.com/" + doc.css(".grid a")[0..13].attr("href").value