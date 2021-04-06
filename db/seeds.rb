# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Type.destroy_all
Type.create(
       [
              {
                     name: "Imagen"
              },
              {
                     name: "Text"
              },
              {
                     name: "Video"
              },
              {
                     name: "Audio"
              }
       ]
)


Category.destroy_all
Category.create(
       [
              {
                     name: "Autosmoviles" 
              },
              {
                     name: "electrodomesticos" 
              },
              {
                     name: "Restaurantes" 
              },
              {
                     name: "Redes Sociales" 
              }
       ]
)


Category.create(
       [      
              {
                     name: "Camioneta",
                     category_id: 1
              },
              {
                     name: "Auto",
                     category_id: 1
              },
              
              {
                     name: "monitores",
                     category_id: 2
              },
              {
                     name: "Computadoras",
                     category_id: 2
              },
              
              {
                     name: "Mcdonald",
                     category_id: 3
              },
              {
                     name: "Subway",
                     category_id: 3
              },
              
              {
                     name: "Facebook",
                     category_id: 4
              },
              {
                     name: "Instagram",
                     category_id: 4
              }
       ]
)


Bookmark.destroy_all

20.times do
       Bookmark.create(
              url: Faker::Internet.url,
              type_id: rand(1..5),
              category_id: rand(1..12)
       )
end