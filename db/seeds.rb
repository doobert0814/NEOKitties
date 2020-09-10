require_relative "../config/environment"
require_relative "../app/models/user.rb"
require_relative "../app/models/kitty.rb"
require_relative "../app/models/toy.rb"


Kitty.destroy_all
User.destroy_all
Toy.destroy_all

mouse = Toy.create(name: "Mouse")
bell = Toy.create(name: "Bell-ball")
stick = Toy.create(name: "Pheasant")
laser = Toy.create(name: "Laser_Pointer")
ball = Toy.create(name: "Red_Ball")


puts "RESET"

