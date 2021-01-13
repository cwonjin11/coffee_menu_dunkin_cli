

require_relative "./dunkin_coffee_menu/version"
require_relative "./dunkin_coffee_menu/cli" 
require_relative "./dunkin_coffee_menu/menu"
require_relative "./dunkin_coffee_menu/scraper"
require "nokogiri" 
require "open-uri"
require "pry"
require 'colorize'

module DunkinCoffeeMenu
  class Error < StandardError; end
  # Your code goes here...
end



