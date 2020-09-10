require "tty-prompt"

prompt = TTY::Prompt.new



require_relative "../config/environment.rb"

system("clear")


##################################landing page##########################
def welcome
    puts "Welcome to NEOKitty"
end
##################################create_account##########################
def create_account
    prompt = TTY::Prompt.new
    ans1 = prompt.select("Would you like to make an account?") do |menu|
        menu.choice "Yes"
        menu.choice "No"
        menu.choice "Exit"
    end
    if ans1 == "Yes"
        puts "Please enter your name: "
        ans2 = gets.chomp
        puts "Please enter a username: "
        ans3= gets.chomp
        @user_created = User.create(name: "#{ans2}", username: "#{ans3}")
    elsif ans1 == "No"
        welcome
    elsif ans1 == "Exit"
        exit
    end
end

##################################find_value_of_food##########################

def find_value_of_food
    Kitty.where("name like ?", "%#{@ans}%").first.hungry
    
end
##################################check if hungry##########################
def check_feed
    prompt = TTY::Prompt.new
    ans = prompt.select("Would you like to check to see if the kitty is hungry first?") do |menu|
        menu.choice "Yes"
        menu.choice "No"
    end

    if ans == 'Yes'
        puts find_value_of_food
        sleep(3)
        feed_kitty
    else
        puts "You need to see if it is hungry first!!!! We are not made of fake money!!"

    end
end

##################################feed_kitty##########################

def feed_kitty
    prompt = TTY::Prompt.new
    ans = prompt.select("Would you like to feed the kitty?") do |menu|
        menu.choice "Yes"
        menu.choice "No"
    end
    if ans == "Yes"
        full = find_value_of_food
        full = false
        Kitty.update(hungry: full)
        puts "Your value of hungry has been changed to #{full}. Congrats you feed the kitty!"
        main_menu
    elsif ans == "No"
        main_menu
    end
end


##################################create_kitty##########################
def create_kitty
    prompt = TTY::Prompt.new
    ans = prompt.select("Time to create a kitty. Do you know what you would like to make?") do |menu|
        menu.choice "Yes"
        menu.choice "No"
    end
    if ans == 'Yes'
        puts "What would you like to name your kitty? "
        name= gets.chomp
        color = prompt.select("What color would you like your kitty?", %w(Tabby Tortoiseshell Calico))
        puts "What would your kitties catchphrase be?"
        catc= gets.chomp
        breed = prompt.select("What breed would you like your kitty?", %w(American_Shorthair Maine_Coon Siamese))
        coat = prompt.select("What coat would you like your kitty to have?", %w(Hairless Shorthair Longhair))
        toy = prompt.yes?("Would you like to pick out a toy for your new kitty?")

            if toy == true 
                result= prompt.select("Please pick one:",%w(Mouse Bell-ball Pheasant Laser_Pointer Red_Ball))
                @picked_toy = Toy.find_by(name: result)
            #binding.pry
            k1 = Kitty.create(name: name, 
                        age: Time.at(Time.current), 
                        color: color, 
                        catchphrase: catc, 
                        breed: breed, 
                        coat: coat, 
                        happiness: 5,
                        hungry: true, 
                        alive: true, 
                        user_id: @user_created.id,
                        toy_id: @picked_toy.id)
            elsif toy == false
                k1 = Kitty.create(name: name, 
                    age: Time.at(Time.current), 
                    color: color, 
                    catchphrase: catc, 
                    breed: breed, 
                    coat: coat, 
                    happiness: 5, 
                    hungry: true,
                    alive: true, 
                    user_id: @user_created.id,
                    toy_id: nil)
            end
            
    elsif ans == "No"
        welcome
    end
end


############################get_happiness#####################

def get_happiness
    Kitty.where("name like ?", "%#{@ans}%").first.happiness
end

############################play with toy#####################

def play_with_toy
    happy = get_happiness
    happy += 4
    Kitty.update(happiness: happy)
    puts "Your kitty is very happy at level #{happy}"
    main_menu
end

################################delete##########################

def delete_user
    puts "Would you like to delete your account?"
    puts "Please enter your name: "
    @ans1 = gets.chomp
    puts "Please enter your username"
    @ans2 = gets.chomp
    user = User.where(name: @ans1, username: @ans2).ids
    #binding.pry
    User.destroy(user)
            
            puts "Goodbye!"
#binding.pry
end
##################################find cat##########################
def find_kitty
    puts "What is the name of the kitty you are looking for? "
    @ans = gets.chomp
    
    kitty = Kitty.where("name like ?", "%#{@ans}%").first
    system('clear')
    # sleep (5)
    if @ans == kitty.name
        puts kitty.attributes
        main_menu
    else
        puts "No kitty found by that name. Please try again"
        find_kitty
    end
    #binding.pry
    # ans.kitties.each{|kitty|
    #     puts "name: #{kitties.name}"}
        #binding.pry
end

##################################main_menu##########################
def main_menu
    prompt = TTY::Prompt.new
    choices = prompt.select("What would you like to do?") do |menu|
        menu.choice 'Play with Kitty'
        menu.choice 'Feed our Kitty'
        menu.choice 'Create another Kitty'
        menu.choice 'Delete Profile'
        menu.choice 'Find Kitty'
        menu.choice 'Exit'
    end
        
        if choices == 'Play with Kitty'
            play_with_toy
        elsif choices == 'Feed our Kitty'
            check_feed
        elsif choices == 'Create another Kitty'
            create_kitty
        elsif choices == 'Find Kitty'
            find_kitty
        elsif choices == 'Delete Profile'
            delete_user
        elsif choices == 'Exit'
            exit
        end
end



##################################exit##########################

def exit
    puts "Goodbye!"
    sleep 3/2
    system ('exit')
    system ('clear')
end


##################################run##########################
welcome
create_account
create_kitty
main_menu