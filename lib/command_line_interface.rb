#build how the user interacts with the app here


require "tty-prompt"
require 'date'

require_relative "../config/environment.rb"

system("clear")

class CommandLineInterface
    
        def logo 
        
            art= <<-ARTWORK
        
        ███╗   ██╗███████╗ ██████╗ ██╗  ██╗██╗████████╗████████╗██╗███████╗███████╗
        ████╗  ██║██╔════╝██╔═══██╗██║ ██╔╝██║╚══██╔══╝╚══██╔══╝██║██╔════╝██╔════╝
        ██╔██╗ ██║█████╗  ██║   ██║█████╔╝ ██║   ██║      ██║   ██║█████╗  ███████╗
        ██║╚██╗██║██╔══╝  ██║   ██║██╔═██╗ ██║   ██║      ██║   ██║██╔══╝  ╚════██║
        ██║ ╚████║███████╗╚██████╔╝██║  ██╗██║   ██║      ██║   ██║███████╗███████║
        ╚═╝  ╚═══╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝   ╚═╝      ╚═╝   ╚═╝╚══════╝╚══════╝

            ARTWORK
            puts art.colorize(:blue)
        end

        def middle_logo
            art= <<-ARTWORK
            |\---/|
            | ,_, |
             \_`_/-..----.
          ___/ `   ' ,""+ \  
         (__...'   __\    |`.___.';
           (_,...'(_,.`__)/'.....+
            ARTWORK
            puts art.colorize(:white)
        end

        def bottom_text
            puts "A game where users can create, play and take care of kitties :)\n\n".colorize(:blue)
        end

        def create_kitty_logo
        
            art= <<-ARTWORK
        
                       .__....._             _.....__,
                         .": o :':         ;': o :".
                         `. `-' .'.       .'. `-' .'
                           `---'             `---'
                 _...----...      ...   ...      ...----..._
              .-'__..-""'----    `.  `"`  .'    ----'""-..__`-.
             '.-'   _.--"""'       `-._.-'       '"""--._   `-.`
             '  .-"'                  :                  `"-.  `
               '   `.              _.'"'._              .'   `
                     `.       ,.-'"       "'-.,       .'
                       `.                           .'
                         `-._                   _.-'
                             `"'--...___...--'"`
        ARTWORK
        puts art.colorize(:white) 
        end

        def play_logo
            art=<<-ARTWORK
                          _                        
                          \`*-.                    
                           )  _`-.                 
                          .  : `. .                
                          : _   '  \               
                          ; *` _.   `*-._          
                          `-.-'          `-.       
                            ;       `       `.     
                            :.       .        \    
                            . \  .   :   .-'   .   
                            '  `+.;  ;  '      :   
                            :  '  |    ;       ;-. 
                            ; '   : :`-:     _.`* ;
                      [bug] .*' /  .*' ; .*`- +'  `*' 
                         `*-*   `*-*  `*-*'
            ARTWORK
        
            puts art.colorize(:yellow)
        end

        def exit_logo
            art=<<-ARTWORK
        ██████╗ ██╗   ██╗███████╗
        ██╔══██╗╚██╗ ██╔╝██╔════╝
        ██████╔╝ ╚████╔╝ █████╗  
        ██╔══██╗  ╚██╔╝  ██╔══╝  
        ██████╔╝   ██║   ███████╗
        ╚═════╝    ╚═╝   ╚══════╝

            ARTWORK
        
            puts art.colorize(:blue)
        end

        ##################################landing page##########################
        def welcome
        
            logo 
            middle_logo
            bottom_text
            puts "Welcome to NEOKitty"
            sleep(2)
            sub_sub_menu
        end
        ##################################Log_in################################

        def log_in
            system('clear')
            logo 
            middle_logo
            bottom_text
            puts "Please enter your username:"
            ans1 = gets.chomp
            user = User.where("username like ?", "#{ans1}").first
            system('clear')
            if user == nil
                logo 
                middle_logo
                puts "Username not found. Please try again"
                sleep(2)
                sub_sub_menu
            elsif ans1 == user.username
                system('clear')
                logo 
                middle_logo
                bottom_text
                puts "Welcome Back ".colorize(:red)
                sleep(2)
                system('clear')
                user_menu
            end
        end

        #############################user_menu#########################

        def user_menu 
            logo 
            middle_logo
            if time_fed != nil
                if time_limit == true
                    puts main_menu
                elsif time_limit == false
                    puts "I'm sorry your kitty has died, please create another one."
                    create_kitty
                end
            elsif time_limit == nil
                create_kitty
            end
        end

        ##################################sub sub menu##########################
        def sub_sub_menu
            system('clear')
            logo 
            middle_logo
            bottom_text
            prompt = TTY::Prompt.new
            ans1 = prompt.select("What would you like to do?") do |menu|
                menu.choice "Sign up"
                menu.choice "Log in"
                menu.choice "Exit"
            end
        
            if ans1 == "Sign up"
                create_account
            elsif ans1 == "Log in"
                system('clear')
                log_in
            else
                exit_method
            end
        end

        ##################################create_account##########################
        def create_account
            system('clear')
            logo
            middle_logo
            bottom_text
            prompt = TTY::Prompt.new
            ans1 = prompt.select("Are you sure you want to create an account?") do |menu|
                menu.choice "Yes"
                menu.choice "Exit"
            end
            if ans1 == "Yes"
                system('clear')
                logo
                middle_logo
                puts "Please enter your name: "
                ans2 = gets.chomp
                system('clear')
                logo
                middle_logo
                puts "Please enter a username: "
                ans3= gets.chomp
                @user_created = User.create(name: "#{ans2}", username: "#{ans3}")
                create_kitty
            else 
                exit_method
            end
        end

        ##################################find_value_of_food##########################

        def find_value_of_food
            hungry = Kitty.where("name like ?", "%#{@ans}%").first.hungry
        end
        ##################################check if hungry##########################
        def check_feed
            system('clear')
            logo
            middle_logo
            prompt = TTY::Prompt.new
            ans = prompt.select("Would you like to check to see if the kitty is hungry first?") do |menu|
                menu.choice "Yes"
                menu.choice "No"
            end

            if ans == 'Yes'
            
                puts "It is #{find_value_of_food} your cat is hungry!"
                sleep(3)
                feed_kitty
            elsif ans == 'No'
                system('clear')
                logo
                middle_logo
                puts "You need to see if it is hungry first!!!! We are not made of fake money!!"
                sleep(3)
                system('clear')
                feed_kitty
            
            end
        end

        ##################################feed_kitty##########################

        def feed_kitty
            logo
            middle_logo
            prompt = TTY::Prompt.new
            ans = prompt.select("Would you like to feed the kitty?") do |menu|
                menu.choice "Yes"
                menu.choice "No"
            end
            if ans == "Yes"
                system('clear')
                logo
                middle_logo
                full = find_value_of_food
                full = false
                Kitty.update(hungry: full)
                puts "Your value of hungry has been changed to #{full}. Congrats you fed the kitty!\n\n"
                happy = get_happiness
                happy += 4
                Kitty.update(happiness: happy, time_fed: Time.now)
                puts "Your kitty is very happy at level #{happy}\n\n"
                sub_menu
            elsif ans == "No"
                main_menu
            end
        end

        ##################################create_kitty##########################
        def create_kitty
            prompt = TTY::Prompt.new
            system('clear')
            create_kitty_logo
            puts "Time to create a kitty!!\n\n"
            sleep(2)
            system('clear')
            create_kitty_logo
                puts "What would you like to name your kitty? "
                name= gets.chomp
                system('clear')
                create_kitty_logo
                color = prompt.select("What color would you like your kitty?", %w(Tabby Tortoiseshell Calico))
                system('clear')
                create_kitty_logo
                puts "What would your kitties catchphrase be?"
                catc= gets.chomp
                system('clear')
                create_kitty_logo
                breed = prompt.select("What breed would you like your kitty?", %w(American_Shorthair Maine_Coon Siamese))
                system('clear')
                create_kitty_logo
                coat = prompt.select("What coat would you like your kitty to have?", %w(Hairless Shorthair Longhair))
                system('clear')
                create_kitty_logo
                toy = prompt.yes?("Would you like to pick out a toy for your new kitty?")
                system('clear')
                create_kitty_logo
        
                    if toy == true 
                        result= prompt.select("Please pick one:",%w(Mouse Bell-ball Pheasant Laser_Pointer Red_Ball))
                        @picked_toy = Toy.find_by(name: result)
                        k1 = Kitty.create(name: name, 
                                age: Time.now, 
                                color: color, 
                                catchphrase: catc, 
                                breed: breed, 
                                coat: coat, 
                                happiness: 5,
                                hungry: true, 
                                alive: true, 
                                user_id: @user_created.id,
                                toy_id: @picked_toy.id,
                                time_fed: nil)
                    elsif toy == false
                        k1 = Kitty.create(name: name, 
                            age: Time.at(Time.current).to_datetime, 
                            color: color, 
                            catchphrase: catc, 
                            breed: breed, 
                            coat: coat, 
                            happiness: 5, 
                            hungry: true,
                            alive: true, 
                            user_id: @user_created.id,
                            toy_id: nil, 
                            time_fed: nil)
                    end
                    system('clear')
                    main_menu
        end


        ############################get_happiness#####################

        def get_happiness
            Kitty.where("name like ?", "%#{@ans}%").first.happiness
        end

        #############################current_time#####################

        def current_time
            time = Time.new
        end

        #############################time limit#########################

        def time_limit
        
            if math > 2.minutes
                puts "Your cat has died, you waited to long to feed it :("
                isAlive
                sleep(3)
                create_kitty
            
            else 
                main_menu
            end
        end

        #############################alive#########################

        def isAlive
            if math > 2.minutes
                kitty = Kitty.where("name like ?", "%#{@ans}%").ids
                Kitty.destroy(kitty)
            end
        end

        #############################time fed#########################

        def time_fed
            if isAlive == true
                kitty = Kitty.where("name like ?", "%#{@ans}%").first.time_fed
                puts kitty
            end
        end

        #############################find time diff#####################

        def math
            hungry = current_time - time_fed
            puts hungry
        end

        ############################play with toy#####################

        def play_with_toy
            system('clear')
            play_logo
            happy = get_happiness
            happy += 4
            Kitty.update(happiness: happy)
            puts "Your kitty loved the playtime! The happiness level has raised to #{happy}\n\n\n"
            sub_menu
        end

        ################################delete##########################

        def delete_user
            logo
            middle_logo
            puts "Would you like to delete your account?"
            puts "Please enter your name: "
            @ans1 = gets.chomp
            puts "Please enter your username"
            @ans2 = gets.chomp
            user = User.where(name: @ans1, username: @ans2).ids
            User.destroy(user)
            system('clear')
            exit_method
        end
        ##################################find_kitty##########################
        def find_kitty
            system('clear')
            logo
            middle_logo
            puts "What is the name of the kitty you are looking for? "
            @ans = gets.chomp

            kitty = Kitty.where("name like ?", "%#{@ans}%").first
        
        
            if kitty == nil
                logo 
                middle_logo
                puts "No kitty found by that name. Please try again"
                sub_menu
            elsif @ans == kitty.name
                puts put_kitty
            end
        end

        def put_kitty
            logo
            middle_logo

            puts "
            Name: #{Kitty.find(1).name}
            Age: #{Kitty.find(1).age}
            Breed: #{Kitty.find(1).breed}
            Catchphrase: #{Kitty.find(1).catchphrase}
            Coat: #{Kitty.find(1).coat}
            alive: #{Kitty.find(1).alive}
            Hungry: #{Kitty.find(1).hungry}
            Happiness level: #{Kitty.find(1).happiness}
            Time_fed: #{Kitty.find(1).time_fed}\n\n".blue
            sub_menu
        end

        def sub_menu
            prompt = TTY::Prompt.new
            choices = prompt.select("What would you like to do?") do |menu|
                menu.choice 'Play with Kitty'
                menu.choice 'Feed our Kitty'
                menu.choice 'Delete Profile'
                menu.choice 'Find Kitty'
                menu.choice 'Exit'
                # menu.choice 'time'
            end

                if choices == 'Play with Kitty'
                    play_with_toy
                elsif choices == 'Feed our Kitty'
                    check_feed
                elsif choices == 'Find Kitty'
                    find_kitty
                elsif choices == 'Delete Profile'
                    delete_user
                elsif choices == 'Exit'
                    exit_method
                # elsif choices == 'time'
                #     time_limit
                
                end
        end


        ##################################main_menu##########################
        def main_menu
            logo
            middle_logo
            prompt = TTY::Prompt.new
            choices = prompt.select("What would you like to do?") do |menu|
                menu.choice 'Play with Kitty'
                menu.choice 'Feed our Kitty'
                menu.choice 'Delete Profile'
                menu.choice 'Find Kitty'
                menu.choice 'Exit'
                # menu.choice 'time'
            end

                if choices == 'Play with Kitty'
                    play_with_toy
                elsif choices == 'Feed our Kitty'
                    check_feed
                elsif choices == 'Find Kitty'
                    find_kitty
                elsif choices == 'Delete Profile'
                    delete_user
                elsif choices == 'Exit'
                    exit_method
                end
        end



        ##################################exit##########################

        def exit_method
            system('clear')
            exit_logo
            sleep 3/2
            system('exit')
            system ('clear')
        end

end
        # ##################################run##########################
        # welcome

