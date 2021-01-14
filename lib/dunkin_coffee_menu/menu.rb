

class DunkinCoffeeMenu::Menu
    attr_accessor :name, :item_url, :description, :subtitle, :allergen

    @@all= []
    
     def initialize (name, item_url)
        @name = name
        @item_url = item_url
        @description = []
        @allergens = []
        @subtitle = []
        
        save
     end


    def self.all 
        DunkinCoffeeMenu::Scraper.scrape_coffee_menu if @@all.empty?
        @@all
        
    end

    def get_subtitle
        s = DunkinCoffeeMenu::Scraper.scrape_subtitle(self.item_url, self) if @subtitle.empty?
        puts s

    end


    def get_description
        d = DunkinCoffeeMenu::Scraper.scrape_description(self.item_url, self) if @description.empty?
        puts d
    end


    def get_allergens
        a = DunkinCoffeeMenu::Scraper.scrape_allergens(self.item_url, self) if @allergens.empty?
        puts a

    end


    def save
        @@all << self
    end




end


   