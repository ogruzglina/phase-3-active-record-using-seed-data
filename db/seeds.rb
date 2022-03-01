# Add a console message so we can see output when the seed file runs
puts "Seeding games"
50.times do
    Game.create( #Faker has random info for games so we create a loop for creating fake records
        title:Faker::Game.title,
        genre:Faker::Game.genre,
        platform: Faker::Game.platform,
        price: rand(0..60)
    )
end

puts "Done seeding"

# Game.create(title: "Breath of the Wild", platform: "Switch", genre: "Action-adventure", price: 60)
# Game.create(title: "Final Fantasy VII", platform: "Playstation", genre: "RPG", price: 60)
# Game.create(title: "Mario Kart", platform: "Switch", genre: "Racing", price: 60)
# Game.create(title: "Candy Crush Saga", platform: "Mobile", genre: "Puzzle", price: 0)