

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


    # def get_description
        
    #     @@all
    # end




    # def get_ingredients
    #     c = DunkinCoffeeMenu::Scraper.scrape_ingredients(self.item_url, self) if @ingredients.empty?
    #     puts c

    # end


    # def get_calories
    #     a = DunkinCoffeeMenu::Scraper.scrape_calories(self.item_url, self) if @calories.empty?
    #     puts a

    # end


#     attr_accessor :name, :item_url, :description, :allergy, :calories

#      @@all = []

#  	def initialize(item_hash)
# 		# Scrape the menu page
# 		item_hash.each{|key, value| self.send(("#{key}="), value)}
# 		@@all <<self
# 	end

# 	def self.create_from_collection(items_array)
# 		# Create Breakfast objects from item array
# 		items_array.each do |item|
# 			self.new(item)
# 		end
# 	end

# 	def add_item_attributes(attributes_hash)
# 		# Add attributes to each menu item using the array created from scraper class
# 		attributes_hash.each{|key, value| self.send(("#{key}="), value)}
# 		self
# 	end

# 	def self.all
# 		@@all
# 	end

# end
     




