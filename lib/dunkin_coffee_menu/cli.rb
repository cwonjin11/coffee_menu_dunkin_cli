class DunkinCoffeeMenu::CLI
    
   
    def run 
        system("clear")  
        greeting
        get_menu
        list_menu
    end


    def greeting      
        puts "\nWelcome to Dunkin Espresso & Coffee menu!\n".colorize(:light_magenta).bold  
        puts "You can have details about the menu you have selected.\n".colorize(:light_magenta).bold 
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




