User.destroy_all
Book.destroy_all

User.create([
  { first_name: 'Patrick', last_name: 'Baselier', email: 'patrick@kabisa.nl' },
  { first_name: 'Jeroen', last_name: 'Knoops', email: 'jeroen@kabisa.nl' },
  { first_name: 'Pascal', last_name: 'Widdershoven', email: 'pascal@kabisa.nl' },
  { first_name: 'Tonći', last_name: 'Galić', email: 'tonci@kabisa.nl' },
  { first_name: 'Roel', last_name: 'Nieskens', email: 'roel@kabisa.nl' },
  { first_name: 'Ralph', last_name: 'Deguelle', email: 'ralph@kabisa.nl' },
  { first_name: 'Michel', last_name: 'Graaf, de', email: 'michel@kabisa.nl' },
  { first_name: 'Giel', last_name: 'Raijmakers', email: 'giel@kabisa.nl' },
  { first_name: 'Remco', last_name: 'Huijdts', email: 'remco@kabisa.nl' },
  { first_name: 'Ariejan', last_name: 'Vroom, de', email: 'ariejan@kabisa.nl' },
  { first_name: 'Pedro', last_name: 'Catalão', email: 'pedro.catalao@kabisa.nl' },
  { first_name: 'Niels', last_name: 'Stevens', email: 'niels@kabisa.nl' },
  { first_name: 'Rui', last_name: 'Salgado', email: 'rui.salgado@kabisa.nl' },
  { first_name: 'Jean', last_name: 'Mertz', email: 'jean@kabisa.nl' },
  { first_name: 'Johan', last_name: 'Hoekjan', email: 'johan@kabisa.nl' },
  { first_name: 'Harm', last_name: 'Laat, de', email: 'harm@kabisa.nl' },
  { first_name: 'Stefan', last_name: 'Raaphorst, van', email: 'stefan@kabisa.nl' },
  { first_name: 'Vivian', last_name: 'Say', email: 'vivian@kabisa.nl' },
  { first_name: 'Reinout', last_name: 'Eppinga', email: 'reinout@kabisa.nl' },
  { first_name: 'Max', last_name: 'Wiertz', email: 'max@kabisa.nl' },
  { first_name: 'Matthijs', last_name: 'Groen', email: 'matthijs@kabisa.nl' },
  { first_name: 'Joost', last_name: 'Saanen', email: 'joost@kabisa.nl' },
  { first_name: 'Andy', last_name: 'Maes', email: 'andy.maes@kabisa.nl' },
  { first_name: 'Ralph', last_name: 'Rooding', email: 'ralph.rooding@kabisa.nl' },
  { first_name: 'Nicole', last_name: 'Bekkers', email: 'nicole@kabisa.nl' },
  { first_name: 'Dave', last_name: 'Collas', email: 'dave@kabisa.nl' },
  { first_name: 'Etienne', last_name: 'Delden, van', email: 'etienne@kabisa.nl' },
  { first_name: 'João', last_name: 'Bernardino', email: 'joao.bernardino@kabisa.nl' },
  { first_name: 'Lucian', last_name: 'Leustean', email: 'lucian@kabisa.nl' },
  { first_name: 'Yvon', last_name: 'Winkelmolen', email: 'yvon@kabisa.nl' }
])

rand(100).times do
  Book.create do |book|
    book.title = Faker::Company.catch_phrase
    book.description = Faker::Lorem.paragraph(2)
    book.author = Faker::Name.name
  end
end
