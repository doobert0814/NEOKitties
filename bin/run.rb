require "tty-prompt"
require 'date'

require_relative "../config/environment.rb"

system("clear")

def logo 

#     puts "                                                                                                                                                                                                                                                                                                                                            
# NNNNNNNN        NNNNNNNEEEEEEEEEEEEEEEEEEEEEE    OOOOOOOOO    KKKKKKKKK    KKKKKKK iiii         tttt              tttt           iiii                                     
# N:::::::N       N::::::E::::::::::::::::::::E  OO:::::::::OO  K:::::::K    K:::::Ki::::i     ttt:::t           ttt:::t          i::::i                                    
# N::::::::N      N::::::E::::::::::::::::::::EOO:::::::::::::OOK:::::::K    K:::::K iiii      t:::::t           t:::::t           iiii                                     
# N:::::::::N     N::::::EE::::::EEEEEEEEE::::O:::::::OOO:::::::K:::::::K   K::::::K           t:::::t           t:::::t                                                    
# N::::::::::N    N::::::N E:::::E       EEEEEO::::::O   O::::::KK::::::K  K:::::KKiiiiiittttttt:::::ttttttttttttt:::::ttttttt   iiiiiii    eeeeeeeeeeee       ssssssssss   
# N:::::::::::N   N::::::N E:::::E            O:::::O     O:::::O K:::::K K:::::K  i:::::t:::::::::::::::::t:::::::::::::::::t   i:::::i  ee::::::::::::ee   ss::::::::::s  
# N:::::::N::::N  N::::::N E::::::EEEEEEEEEE  O:::::O     O:::::O K::::::K:::::K    i::::t:::::::::::::::::t:::::::::::::::::t    i::::i e::::::eeeee:::::ess:::::::::::::s 
# N::::::N N::::N N::::::N E:::::::::::::::E  O:::::O     O:::::O K:::::::::::K     i::::tttttt:::::::ttttttttttt:::::::tttttt    i::::ie::::::e     e:::::s::::::ssss:::::s
# N::::::N  N::::N:::::::N E:::::::::::::::E  O:::::O     O:::::O K:::::::::::K     i::::i     t:::::t           t:::::t          i::::ie:::::::eeeee::::::es:::::s  ssssss 
# N::::::N   N:::::::::::N E::::::EEEEEEEEEE  O:::::O     O:::::O K::::::K:::::K    i::::i     t:::::t           t:::::t          i::::ie:::::::::::::::::e   s::::::s      
# N::::::N    N::::::::::N E:::::E            O:::::O     O:::::O K:::::K K:::::K   i::::i     t:::::t           t:::::t          i::::ie::::::eeeeeeeeeee       s::::::s   
# N::::::N     N:::::::::N E:::::E       EEEEEO::::::O   O::::::KK::::::K  K:::::KKKi::::i     t:::::t    tttttt t:::::t    tttttti::::ie:::::::e          ssssss   s:::::s 
# N::::::N      N::::::::EE::::::EEEEEEEE:::::O:::::::OOO:::::::K:::::::K   K::::::i::::::i    t::::::tttt:::::t t::::::tttt:::::i::::::e::::::::e         s:::::ssss::::::s
# N::::::N       N:::::::E::::::::::::::::::::EOO:::::::::::::OOK:::::::K    K:::::i::::::i    tt::::::::::::::t tt::::::::::::::i::::::ie::::::::eeeeeeee s::::::::::::::s 
# N::::::N        N::::::E::::::::::::::::::::E  OO:::::::::OO  K:::::::K    K:::::i::::::i      tt:::::::::::tt   tt:::::::::::ti::::::i ee:::::::::::::e  s:::::::::::ss  
# NNNNNNNN         NNNNNNEEEEEEEEEEEEEEEEEEEEEE    OOOOOOOOO    KKKKKKKKK    KKKKKKiiiiiiii        ttttttttttt       ttttttttttt iiiiiiii   eeeeeeeeeeeeee   sssssssssss    
# \n".colorize(:blue)
# end

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

def del_logo
    art= <<-ARTWORK
                  ___
                  ,_    '---'    _,
                  \ `-._|\_/|_.-' /
                   |   =)'T'(=   |
                    \   /`"`\   /
                     '._\) (/_.'
                         | |
                        /\ /\
                        \ T /
                        (/ \)\
                             ))
                            ((
                             \)
    ARTWORK
    puts art.colorize(:white)
end
##################################landing page##########################
def welcome
    logo 
    middle_logo
    bottom_text
    puts "Welcome to NEOKitty"
    sleep(3)
    create_account
end

##################################create_account##########################
def create_account
    system('clear')
    logo
    middle_logo
    bottom_text
    prompt = TTY::Prompt.new
    ans1 = prompt.select("Would you like to make an account?") do |menu|
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
        exit
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

##################################what_time_fed#########################

def what_time_fed
    Kitty.where("time_fed like ?", "%#{@ans}%").first
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
    # system('clear')
end


############################get_happiness#####################

def get_happiness
    Kitty.where("name like ?", "%#{@ans}%").first.happiness
    #binding.pry

end

# ############################current_time#####################

# def current_time
#     time = Time.new
# end
# ############################find time diff#####################

# def convert_mil_to_min(time_fed, current_time)
#     t=current_time - time_fed
#     seconds = t/1000
#     Time.at(seconds).strftime("%H:%M:%S")
#     #binding.pry
# end


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
    exit
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
            exit
        # elsif choices == 'time'
        #     convert_mil_to_min(what_time_fed, current_time)

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
            exit
        # elsif choices == 'time'
        #     convert_mil_to_min(what_time_fed, current_time)
        end
end



##################################exit##########################

def exit
    system('clear')
    exit_logo
    sleep 3/2
    system ('exit')
    system ('clear')
end


##################################run##########################
welcome
