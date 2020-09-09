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
    puts "Would you like to create an account?"
    ans1 = gets.chomp
    if ans1 == "Y"
        puts "Please enter your name: "
        ans2 = gets.chomp
        puts "Please enter a username: "
        ans3= gets.chomp
        user = User.create(name: "#{ans2}", username: "#{ans3}")
    elsif ans1 == "N"
        exit
    end
end

##################################create_kitty##########################
def create_kitty
    puts "Time to create a kitty. Do you know what you would like to make?"
    puts "You will need a name, color, catchphrase, breed, coat"
    ans = gets.chomp
    if ans == 'Y'
        puts "What would you like to name your kitty? "
        name= gets.chomp
        puts "What color would you like your cat to be?"
        color = gets.chomp
        puts "What would your kitties catchphrase be?"
        catc= gets.chomp
        puts "What breed would you like your kitty?"
        breed = gets.chomp
        puts "What coat would you cat have?"
        coat = gets.chomp

        k1 = Kitty.create(name: name, age: Time.now, color: color, catchphrase: catc, breed: breed, coat: coat)
    else
        exit
    end
end


##################################delete##########################

def delete_user(username)
    puts "Would you like to delete your account?"
    puts "Please enter your name: "
    ans1 = gets.chomp
    puts "Please enter your username"
    ans2 = gets.chomp
    user = User.where(name: ans1, username: ans2).ids
            User.destroy(user)
            puts "Goodbye!"
binding.pry
end

##################################main_menu##########################
def main_menu
    prompt = TTY::Prompt.new
    choices = prompt.select("What would you like to do?") do |menu|
        menu.choice 'Play with Kitty'
        menu.choice 'kill cat'
        menu.choice 'Delete Profile'

        if choices == 'Play with Kitty'
            playWithCat
        elsif choices == 'kill cat'
            exit
        elsif choices == 'Delete Profile'
            delete_user(username)
        end
    end
end



##################################exit##########################

def exit
    puts "Goodbye!"
    sleep 3/2
    system ('exit')
end
##################################run##########################
welcome
create_account
create_kitty
main_menu