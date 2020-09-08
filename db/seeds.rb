Kitties.destroy_all
User.destroy_all
Toy.destroy_all

Kitties.create!([{
    name: "Garfield",
    age: 2, 
    color: "Orange",
    catchphrase: "I Hate Mondays",
    breed: "Orange Tabby",
    coat: "Orange",
    alive: true,
    fed: false,
    happiness: (3)
    }])
u1 = User.create(name: "Jon", username: "odiegarfield")

