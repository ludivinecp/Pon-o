
Service.create ([{Faker::Name.title 
                  category: 'sport',
                  Faker::Commerce.price,
                  Faker::Lorem.paragraph(2),
                  Faker::Date.forward(23),
                  Faker::Time.between(DateTime.now - 1, DateTime.now),
                  Faker::Number.number(10) }])


