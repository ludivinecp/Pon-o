
# Service.create ([{Faker::Name.title 
#                   categories_id: 'sport',
#                   Faker::Commerce.price,
#                   Faker::Lorem.paragraph(2),
#                   Faker::Date.forward(23),
#                   Faker::Time.between(DateTime.now - 1, DateTime.now),
#                   Faker::Number.number(10) }])


User.create([{ email: 'guest@wcs.com',
              password: 'jecode4laloupe',


  }])
User.create([{ email: 'ludivine@wcs.com',
              password: 'jecode4laloupe',

  }])
User.create([{ email: 'nelly@wcs.com',
              password: 'jecode4laloupe',

  }])
User.create([{ email: 'victor@wcs.com',
              password: 'jecode4laloupe',

  }])
User.create([{ email: 'ph@wcs.com',
              password: 'jecode4laloupe',

  }])
User.create([{ email: 'mathieu@wcs.com',
              password: 'jecode4laloupe',
  }])
User.create([{ email: 'Lucie@wcs.com',
              password: 'jecode4laloupe',
  }])
User.create([{ email: 'erwann@wcs.com',
              password: 'jecode4laloupe',
  }])
User.create([{ email: 'alex@wcs.com',
              password: 'jecode4laloupe',
  }])
User.create([{ email: 'romain@wcs.com',
              password: 'jecode4laloupe',
  }])


Centre.create([{
  siret: 12345,
  ffe: 'azerty1234',
  name: 'Arras du beau dada',
  address: '13 rue de la gare aubervilliers',
  user_id: 1
}])
Centre.create([{
  siret: 246810,
  ffe: 'qwerty5678',
  name: 'Centre du cheval krotal',
  address: '14 avenue de l\'opéra paris',
  user_id: 2
}])
Centre.create([{
  siret: 6969696,
  ffe: 'qsdf9876',
  name: 'Galop\'s style',
  address: '2 Rue Georges Guynemer La Loupe',
  user_id: 3
}])
Centre.create([{
  siret: 112358,
  ffe: 'fibo011',
  name: 'hihihi equitation',
  address: '3 rue de la gare la loupe ',
  user_id: 4
}])
Centre.create([{
  siret: 1357911,
  ffe: 'imp135n',
  name: 'Poney manège',
  address: '3 avenue des champs elysées paris',
  user_id: 5
}])
Centre.create([{
  siret: 2250255,
  ffe: 'sym101010',
  name: 'Galop 65',
  address: '4 rue de vaugirard paris',
  user_id: 6
}])
Centre.create([{
  siret: 687980,
  ffe: 'Le ranch',
  name: 'Le gite du petit chêne',
  address: '3 rue marcel proust orleans',
  user_id: 7
}])
Centre.create([{
  siret: 11223344,
  ffe: 'repet1111',
  name: 'Le ranch de bebert',
  address: '',
  user_id: 8
}])
Centre.create([{
  siret: 102030,
  ffe: 'diz10aine',
  name: 'Les cowboys au fond du jardin',
  address: '4 rue de la gare angers',
  user_id: 9
}])
Centre.create([{
  siret: 209812,
  ffe: 'EGulopZ1',
  name: 'Ymca club',
  address: '3 rue de la paix paris',
  user_id: 10
}])

# Rider.create([{ last_name: 'Guest',
#               first_name: 'Bulma',
#               phone: '0123456789',
#               address: '6 place jules nadi',
#               age: 29,
#               gender:'homme',
#               weight: 70,
#               tall: 175,
#               nickname: 'Adam',
#               level: 'Debutant',
#               user_id: 11

#   }])

# Rider.create([{last_name: 'ludivine',
#               first_name: 'coipel',
#               phone: '0678907654',
#               address: '3 rue joliot curie',
#               age: 58,
#               gender:'homme',
#               weight: 85,
#               tall: 170,
#               nickname: 'grisous',
#               level: 'Intermediaire',
#               user_id: 12


#   }])

# Rider.create([{ last_name: 'nelly',
#               first_name: 'darte',
#               phone: '0987678945',
#               address: '45 avenue du général leclerc',
#               age: 36,
#               gender:'femme',
#               weight: 80,
#               tall: 165,
#               nickname: 'Dada',
#               level: 'Confirme',
#               user_id: 13

#   }])

# Rider.create([{ last_name: 'victor',
#               first_name: 'goutay',
#               phone: '0974534567',
#               address: '14 rue de la gare',
#               age: 21,
#               gender:'homme',
#               weight: 67,
#               tall: 190,
#               nickname: 'Poulet',
#               level: 'Debutant',
#               user_id: 14


#   }])

# Rider.create([{ last_name: 'PH',
#               first_name: 'haffner',
#               phone: '0123456765',
#               address: '12 rue du bac',
#               age: 19,
#               gender:'femme',
#               weight: 60,
#               tall: 170,
#               nickname: 'Youpi',
#               level: 'Confirme',
#               user_id: 15


#   }])

# Rider.create([{last_name: 'mathieu',
#               first_name: 'loret',
#               phone: '0976785467',
#               address: '3 rue d\'Alésia',
#               age: 62,
#               gender:'femme',
#               weight: 60,
#               tall: 160,
#               nickname: 'Lola',
#               level: 'Debutant',
#               user_id: 16


#   }])

# Rider.create([{ last_name: 'lucie',
#               first_name: 'de la roche',
#               phone: '0989645678',
#               address: '12 rue du bac',
#               age: 45,
#               gender:'femme',
#               weight: 49,
#               tall: 160,
#               nickname: 'Baby_girl',
#               level: 'Confirme',
#               user_id: 17


#   }])
# Rider.create([{ last_name: 'erwann',
#               first_name: 'prat',
#               phone: '0987678456',
#               address: '62 rue du 11 novembre',
#               age: 68,
#               gender:'homme',
#               weight: 70,
#               tall: 160,
#               nickname: 'SuperPapy',
#               level: 'Intermediaire',
#               user_id: 18


#   }])
# Rider.create([{ last_name: 'alexandra',
#               first_name: 'dupuis',
#               phone: '0967896545',
#               address: '3 rue jean vende',
#               age: 41,
#               gender: 'homme',
#               weight: 90,
#               tall: 190,
#               nickname: 'Rocky',
#               level: 'Debutant',
#               user_id: 19


#   }])
# Rider.create([{last_name: 'romain',
#               first_name: 'dardan',
#               phone: '0978965745',
#               address: '3 rue du faubourg saint antoine',
#               age: 24,
#               gender: 'femme',
#               weight: 55,
#               tall: 165,
#               nickname: 'Chouquette',
#               level: 'Confirmé',
#               user_id: 20

#   }])
Service.create([{ title: 'nature1',
              categories_id: 1,
              price: 50,
              description: 'balade dans la nature',
              date: '2015-11-10',
              time: '05:00:00',
              number_of_people: 4,
              centre_id: 1 }])

Service.create([{ title: 'decouverte1',
              categories_id: 2,
              price: 30,
              description: 'decouverte de lequitation',
              date: '2016-01-01',
              time: '03:00:00',
              number_of_people: 5,
              centre_id: 3}])


Service.create([{ title: 'sport1',
              categories_id: 3,
              price: 70,
              description: 'activité sportive avec saut dobstacles',
              date: '2015-11-15',
              time: '02:00:00',
              number_of_people: 3,
              centre_id: 3 }])

Service.create([{ title: 'sport2',
              categories_id: 3,
              price: 70,
              description: 'activité sportive balaise',
              date: '2016-02-20',
              time: '08:00:00',
              centre_id: 4 }])

Service.create([{ title: 'decouverte2',
              categories_id: 2,
              price: 30,
              description: 'decouverte du poney',
              date: '2016-03-10',
              time: '01:00:00',
              number_of_people: 1,
              centre_id: 5 }])

Service.create([{ title: 'nature2',
              categories_id:  1,
              price: 50,
              description: 'balade dans la nature cool',
              date: '2016-02-01',
              time: '09:00:00',
              number_of_people: 7,
              centre_id: 6 }])

Service.create([{ title: 'sport3',
              categories_id: 3,
              price: 70,
              description: 'activité sportive haut level',
              date: '2016-01-05',
              time: '01:00:00',
              number_of_people: 8,
              centre_id: 7 }])

Service.create([{ title: 'nature3',
              categories_id:  1,
              price: 50,
              description: 'promenade relaxante',
              date: '2015-11-29',
              time: '02:00:00',
              number_of_people: 9,
              centre_id: 8 }])

Service.create([{ title: 'decouvert3',
              categories_id: 2,
               price: '30',
              description: 'decouverte du cheval',
              date: '2015-11-07',
              time: '04:00:00',
              number_of_people: 5,
              centre_id: 9 }])

Service.create([{ title: 'sport4',
              categories_id: 3,
              price: 70,
              description: 'activité sportive pas trop dur',
              date: '2015-11-18',
              time: '04:00:00',
              number_of_people: 3,
              centre_id: 10 }])
