require_relative "../config/environment.rb"

system("clear")

def welcome
    puts "Welcome to NEOKitty"
end

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


def exit
    puts "Goodbye!"
    sleep 3/2
    system ('exit')
end

welcome
create_account