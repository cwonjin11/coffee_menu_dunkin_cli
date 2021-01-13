class DunkinCoffeeMenu::CLI
    
    #greeting user
    def run 
        system("clear")  #clear entire terminal
        greeting
        get_menu
        list_menu
    end


    def greeting      
        puts "Welcome to Dunkin Espresso & Coffee menu!\n".colorize(:light_magenta).bold  
    end


    def get_menu
        @menu = DunkinCoffeeMenu::Menu.all
    end


    def list_menu
        puts "============================="
        @menu.each.with_index(1) do |menu, index|
        puts "#{index}. ".colorize(:yellow) + "#{menu.name}"
        end
        puts "============================="
        get_user_menu
    end


    def get_user_menu
        input = nil
        input != 'exit'
            puts "\nPlease ".colorize(:light_magenta)  + "'select the number' ".colorize(:yellow) + 
            "of your choice or enter ".colorize(:light_magenta) + "'exit' ".colorize(:yellow) + "to end program.".colorize(:light_magenta) 
        input = gets.strip
        if (input.to_i > 0) && (input.to_i < 15)
            show_description_for(input)
        elsif
            input == "exit" 
            end_program
        else
            puts "I don't understand. Could you try again?"
            get_user_menu
        end
    
    end

    def show_description_for(input)

        menu = @menu[input.to_i - 1]
        puts "\nHere are the description for ".colorize(:light_magenta) + "#{menu.name}\n".colorize(:yellow)
        puts menu.get_subtitle
        puts "||Description||".colorize(:cyan).underline
        puts menu.get_description
        puts "||Allergens message||".colorize(:cyan).underline
        puts menu.get_allergens
        puts "\n"
        return_to_menu

    end



    def return_to_menu

        input = nil
        input != "exit"
        puts "Would you like to go back to the menu? Enter ".colorize(:light_magenta) + "'Y' ".colorize(:yellow) + 
        "to the menu or enter ".colorize(:light_magenta) + "'exit' ".colorize(:yellow) + "to end the program ".colorize(:light_magenta)
        input = gets.strip.downcase
        if 
            input == "y" 
            list_menu
        elsif 
            input == "exit" 
            end_program
        else 
            puts "I don't understand. could you try again?".colorize(:light_magenta)
            return_to_menue
        end

    end



    def end_program
        puts "\nThank you! Have a delicious day!".colorize(:light_magenta).bold
    end

end






    #     chosen_menu = gets.strip.to_i
    #     if chosen_menu == 0
    #         # binding.pry
    #         puts "I did not understand, could you try again?"
    #         chosen_menu = gets.strip.to_i
    #     end
    #     show_description_for(chosen_menu)
    # end
  





    # def more_details
        # menu = @menu[chosen_menu - 1]
        # puts menu.get_calories
        # binding.pry

        # @details = DunkinCoffeeMenu::Scraper.details
        # @detials.each.with_index (1) do |details , i|
        #     puts "Total Calories #{details.caloires}, Allergens #{details.allergens}, Ingredients #{details.ingredients}" # Scraping item details needed!!
        # end
        


    #         puts " Do you want to get back to the list of menu? Enter 'Y' or 'N' to exit: " 
    #                 input = gets.strip.downcase
    #                 if input == "y" 
    #                     list_menu
    #                 else input == "n" 
    #                     end_program
    #                 end


    # end

        # show_description_for(chosen_menu)

        
        # details = 

        # def get_animal_description(input)
        #     animal = EndangeredAnimals::Scraper.get_animal_information(input)
        
        #     puts "", "                 ~* #{animal.name} *~"
        #     puts "-------------------------------------------------------------------"
        #     puts "Scientific Name:          #{animal.scientific_name}"
        #     puts "Status:                   #{animal.status}"
        #     puts "Population:               #{animal.population}"
        #     puts "Habitat:                  #{animal.habitat}"
        #     puts "Places:                   #{animal.place}"
        #     puts "-----------------"
        #     puts "| Description:  |"
        #     puts "-----------------", "#{animal.description}"
        #   end













        # DunkinCoffeeMenu::Menu.new("coffee")  #test file
        # DunkinCoffeeMenu::Menu.new("Latte")  #test file
       
            # #menu
    # def list_menu 
    #     # list all times below
    #     puts "Please choose a menu below: "
    #     puts "============================="
    #     menu = scrape_coffee_menu

    #     #list_menu 
    #     input = gets.strip.downcase
    #     choose_option(input)
    #     return input
    # end

    # # def scrape_coffee_menu
    # #     Scraper.scrape_coffee_menu
    # #     puts "=============================="

    # # end








            
        # a = menu.description
        # puts a
        # binding.pry
        # binding.pry

    #     input = nil
    #     input != 'exit'
    #     puts "Would you like to see more details? Enter 'Y' or 'N' get back to the list or 'exit' to end the program "
    #        input = gets.strip.downcase
            
    #         if input == "y" 
    #             # puts "||Calories||" 
    #             # puts menu.get_calories
    #             puts "||Allerens||" 
    #             puts menu.get_allergens
    #             puts "||Ingredients||" 
    #             puts menu.get_ingredients
    #             # puts menu.get_ingredients
    #         elsif input == "n"
    #             list_menu
    #         elsif input == 'exit'
    #             end_program

    #         else 
    #             put "i don't understand. could you try again?"

    #         end
            
    #         puts " Do you want to get back to the list of menu? Enter 'Y' or 'N' to exit the program  : " 
    #         input = gets.strip.downcase
    #         if input == "y" 
    #             list_menu
    #         else input == "n" 
    #             end_program
    #         end
        

    # end