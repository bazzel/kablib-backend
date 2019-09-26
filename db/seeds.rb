User.destroy_all
Book.destroy_all

User.create([
  { first_name: 'John', last_name: 'Doe', email: 'john@kabisa.nl' }
])

rand(50..100).times do
  book = Book.create do |book|
    book.title = Faker::Company.catch_phrase
    book.description = Faker::Lorem.paragraph(2)
    book.author = Faker::Name.name


    User.all.sample(rand(User.count)).each do |user|
      book.reviews.build({
        user: user,
        description: Faker::Lorem.paragraph(2),
        like: (rand(0..1) == 1)
      })
    end
  end

  if rand(0..1) == 1
    Borrow.create({
      book: book,
      user: User.offset(rand(User.count)).first
    })
  end
end


