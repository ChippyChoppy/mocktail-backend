# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "🐉 Razing it all to the ground 🦖 🦕"
# Favorite.destroy_all
# Ingredient.destroy_all
User.destroy_all
Mocktail.destroy_all

mockpics = [
    "https://static01.nyt.com/images/2015/07/14/dining/xxwatermeloncucumber/xxwatermeloncucumber-articleLarge.jpg",
    "https://static01.nyt.com/images/2015/07/13/dining/xxfaux/xxfaux-articleLarge.jpg",
    "https://static01.nyt.com/images/2017/06/28/dining/28MOCKTAILS2/28MOCKTAILS2-articleLarge-v2.jpg",
    "https://static01.nyt.com/images/2017/06/28/dining/28MOCKTAILS4/28MOCKTAILS4-articleLarge.jpg",
    "https://static01.nyt.com/images/2016/08/15/dining/15COOKING-LEMONADE2/15COOKING-LEMONADE2-articleLarge.jpg",
    "https://static01.nyt.com/images/2013/09/08/magazine/08drink/mag-08Drink-t_CA0-articleLarge.jpg",
    "https://static01.nyt.com/images/2019/05/21/dining/kwr-dirty-horchata/kwr-dirty-horchata-articleLarge.jpg",
    "https://static01.nyt.com/images/2019/06/12/dining/10Tajinrex/merlin_156061500_17b2227d-01f8-4839-b8ae-1970228d6b7c-articleLarge.jpg",
    "https://static01.nyt.com/images/2009/05/22/health/22recipehealth_600/22recipehealth_600-articleLarge.jpg",
    "https://static01.nyt.com/images/2020/04/08/dining/08whippedcoffee-drink/08whippedcoffee-drink-articleLarge.jpg"
]

glasses = [
    "Pint Glass", "Gighball", "Flute", "Old Fashioned Glass", "Rocks Glass", "Nick and Nora", "Snifter", "Mule", "Coup", "Tulip Glass", "Collins Glass", "Wine Glass", "Hurricane Glass", "Martini Glass", "Margarita Glass"
]
tags = [
    "Tiki", "Classic", "Blended", "Punch", "Hot", "Short", "Bitter", "Contemporary"
]
puts "Mixing some drinks 🧉"
10.times do 
    mocktail = Mocktail.create(
        name: Faker::Cannabis.strain, 
        imageUrl: mockpics.sample, 
        tasting_notes: Faker::Coffee.notes, 
        glassware: glasses.sample, 
        instruction: Faker::Hipster.paragraph(sentence_count: 3), 
        tag: tags.sample, 
        like: rand(0..50), 
        dislike: rand(0..50),
    )   

    5.times do
        Ingredient.create!(
            name: Faker::Food.ingredient,
            measurement: Faker::Food.measurement,
            mocktail: mocktail
        )
    end
end

puts "Creating human life 👶🏻"
5.times do 
    user = User.create!(
        name: Faker::GreekPhilosophers.name
    )
end

puts "Oh my god I love that one! 💗😍💗"
40.times do
    favorite = Favorite.create!(
        user_id: User.all.sample.id,
        mocktail_id: Mocktail.all.sample.id
    )
end

puts "Donezo! 🍾"

# GET /api/v1/mocktails/:id