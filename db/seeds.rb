Centre.create([{
  siret: 12345,
  ffe: 'azerty1234',
  name: 'Arras du beau dada',
  user_id: 1
}])
Centre.create([{
  siret: 246810,
  ffe: 'qwerty5678',
  name: 'Centre du cheval krotal',
  user_id: 2
}])
Centre.create([{
  siret: 6969696,
  ffe: 'qsdf9876',
  name: 'Galop\'s style',
  user_id: 3
}])
Centre.create([{
  siret: 112358,
  ffe: 'fibo011',
  name: 'hihihi equitation',
  user_id: 4
}])
Centre.create([{
  siret: 1357911,
  ffe: 'imp135n',
  name: 'Poney manège',
  user_id: 5
}])
Centre.create([{
  siret: 2250255,
  ffe: 'sym101010',
  name: 'Galop 65',
  user_id: 6
}])
Centre.create([{
  siret: 687980,
  ffe: 'Le ranch',
  name: 'Le gite du petit chêne',
  user_id: 7
}])
Centre.create([{
  siret: 11223344,
  ffe: 'repet1111',
  name: 'Le ranch de bebert',
  user_id: 8
}])
Centre.create([{
  siret: 102030,
  ffe: 'diz10aine',
  name: 'Les cowboys au fond du jardin',
  user_id: 9
}])
Centre.create([{
  siret: 209812,
  ffe: 'EGulopZ1',
  name: 'Ymca club',
  user_id: 10
}])

User.create([{ email: 'guest@wcs.com',
              password: 'jecode4laloupe',
              last_name: 'Guest',
              first_name: 'Bulma',
              phone: '0123456789',
              address: '6 place jules nadi',
              city: 'Narbonne',
              age: 29,
              gender:'homme',
              weight: 70,
              tall: 175,
              nickname: 'Adam',
              level: 'Debutant',
              
  }])

User.create([{ email: 'ludivine@wcs.com',
              password: 'jecode4laloupe',
              last_name: 'ludivine',
              first_name: 'coipel',
              phone: '0678907654',
              address: '3 rue joliot curie',
              city: 'la loupe',
              age: 58,
              gender:'homme',
              weight: 85,
              tall: 170,
              nickname: 'grisous',
              level: 'Intermediaire',
              

  }])

User.create([{ email: 'nelly@wcs.com',
              password: 'jecode4laloupe',
              last_name: 'nelly',
              first_name: 'darte',
              phone: '0987678945',
              address: '45 avenue du général leclerc',
              city: 'Maisons-alfort',
              age: 36,
              gender:'femme',
              weight: 80,
              tall: 165,
              nickname: 'Dada',
              level: 'Confirme',
              
  }])

User.create([{ email: 'victor@wcs.com',
              password: 'jecode4laloupe',
              last_name: 'victor',
              first_name: 'goutay',
              phone: '0974534567',
              address: '14 rue de la gare',
              city: 'La loupe',
              age: 21,
              gender:'homme',
              weight: 67,
              tall: 190,
              nickname: 'Poulet',
              level: 'Debutant',
              

  }])

User.create([{ email: 'ph@wcs.com',
              password: 'jecode4laloupe',
              last_name: 'PH',
              first_name: 'haffner',
              phone: '0123456765',
              address: '12 rue du bac',
              city: 'Paris',
              age: 19,
              gender:'femme',
              weight: 60,
              tall: 170,
              nickname: 'Youpi',
              level: 'Confirme',
              

  }])

User.create([{ email: 'mathieu@wcs.com',
              password: 'jecode4laloupe',
              last_name: 'mathieu',
              first_name: 'loret',
              phone: '0976785467',
              address: '3 rue d\'Alésia',
              city: 'Paris',
              age: 62,
              gender:'femme',
              weight: 60,
              tall: 160,
              nickname: 'Lola',
              level: 'Debutant',
              centre: false

  }])

User.create([{ email: 'Lucie@wcs.com',
              password: 'jecode4laloupe',
              last_name: 'lucie',
              first_name: 'de la roche',
              phone: '0989645678',
              address: '12 rue du bac',
              city: 'Paris',
              age: 45,
              gender:'femme',
              weight: 49,
              tall: 160,
              nickname: 'Baby_girl',
              level: 'Confirme',
              centre: false

  }])
User.create([{ email: 'erwann@wcs.com',
              password: 'jecode4laloupe',
              last_name: 'erwann',
              first_name: 'prat',
              phone: '0987678456',
              address: '62 rue du 11 novembre',
              city: 'sury le comtal',
              age: 68,
              gender:'homme',
              weight: 70,
              tall: 160,
              nickname: 'SuperPapy',
              level: 'Intermediaire',
              centre: false

  }])
User.create([{ email: 'alex@wcs.com',
              password: 'jecode4laloupe',
              last_name: 'alexandra',
              first_name: 'dupuis',
              phone: '0967896545',
              address: '3 rue jean vende',
              city: 'Andrezieux',
              age: 41,
              gender: 'homme',
              weight: 90,
              tall: 190,
              nickname: 'Rocky',
              level: 'Debutant',
              centre: false

  }])
User.create([{ email: 'romain@wcs.com',
              password: 'jecode4laloupe',
              last_name: 'romain',
              first_name: 'dardan',
              phone: '0978965745',
              address: '3 rue du faubourg saint antoine',
              city: 'Paris',
              age: 24,
              gender: 'femme',
              weight: 55,
              tall: 165,
              nickname: 'Chouquette',
              level: 'Confirmé',
              centre: false

  }])
Service.create([{ title: 'nature1',
              category:'nature',
              price: 50,
              description: 'balade dans la nature',
              date: '2015-11-10',
              hour: '05:00:00',
              number_of_people: 4,
              centre_id: 1 }])

Service.create([{ title: 'decouverte1',
              category: 'decouverte',
              price: 30,
              description: 'decouverte de lequitation',
              date: '2016-01-01',
              hour: '03:00:00',
              number_of_people: 5,
              centre_id: 3}])


Service.create([{ title: 'sport1',
              category: 'sport',
              price: 70,
              description: 'activité sportive avec saut dobstacles',
              date: '2015-11-15',
              hour: '02:00:00',
              number_of_people: 3,
              centre_id: 3 }])

Service.create([{ title: 'sport2',
              category: 'sport',
              price: 70,
              description: 'activité sportive balaise',
              date: '2016-02-20',
              hour: '08:00:00',
              centre_id: 4 }])

Service.create([{ title: 'decouverte2',
              category: 'decouverte',
              price: 30,
              description: 'decouverte du poney',
              date: '2016-03-10',
              hour: '01:00:00',
              number_of_people: 1,
              centre_id: 5 }])

Service.create([{ title: 'nature2',
              category: 'nature',
              price: 50,
              description: 'balade dans la nature cool',
              date: '2016-02-01',
              hour: '09:00:00',
              number_of_people: 7,
              centre_id: 6 }])

Service.create([{ title: 'sport3',
              category: 'sport',
              price: 70,
              description: 'activité sportive haut level',
              date: '2016-01-05',
              hour: '01:00:00',
              number_of_people: 8,
              centre_id: 7 }])

Service.create([{ title: 'nature3',
              category: 'nature',
              price: 50,
              description: 'promenade relaxante',
              date: '2015-11-29',
              hour: '02:00:00',
              number_of_people: 9,
              centre_id: 8 }])

Service.create([{ title: 'decouvert3',
              category: 'decouverte',
              price: '30',
              description: 'decouverte du cheval',
              date: '2015-11-07',
              hour: '04:00:00',
              number_of_people: 5,
              centre_id: 9 }])

Service.create([{ title: 'sport4',
              category: 'sport',
              price: 70,
              description: 'activité sportive pas trop dur',
              date: '2015-11-18',
              hour: '04:00:00',
              number_of_people: 3,
              centre_id: 10 }])
