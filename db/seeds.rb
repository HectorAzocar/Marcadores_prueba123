
#Creo los tipos de Bookmarks
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

#Creo las Categorias de Bookmarks
Category.destroy_all
Category.create(
       [
              {
                     name: "Autosmoviles" #Tendrá el ID = 1
              },
              {
                     name: "electrodomesticos" #Tendrá el ID = 2
              },
              {
                     name: "Restaurantes" #Tendra el ID = 3
              },
              {
                     name: "Redes Sociales" #Tendrá el ID = 4
              }
       ]
)

#Creo las sub categorias
Category.create(
       [      #Sub categorias de Animales
              {
                     name: "Camioneta",
                     category_id: 1
              },
              {
                     name: "Auto",
                     category_id: 1
              },
              #Sub Categorias de Ropa
              {
                     name: "monitores",
                     category_id: 2
              },
              {
                     name: "Computadoras",
                     category_id: 2
              },
              #Sub categorias de Comida
              {
                     name: "Mcdonald",
                     category_id: 3
              },
              {
                     name: "Subway",
                     category_id: 3
              },
              #Sub categorias de Redes sociales
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

#Creacion de Bookmarks
Bookmark.destroy_all

20.times do
       Bookmark.create(
              url: Faker::Internet.url,
              type_id: rand(1..5),
              category_id: rand(1..12)
       )
end