require_relative "../config/environment"
require_relative "../app/models/user.rb"
require_relative "../app/models/kitty.rb"
require_relative "../app/models/toy.rb"


Kitty.destroy_all
User.destroy_all
Toy.destroy_all

mouse = Toy.create(name: "Mouse", type: "Soft Mouse")
bell = Toy.create(name: "Bell-ball", type: "Makes noise")
stick = Toy.create(name: "Pheasant ", type: "Want")
laser = Toy.create(name: "Laser Pointer", type: "Laser Pointer")
ball = Toy.create(name: "Red Ball", type: "ball")


puts "done"

