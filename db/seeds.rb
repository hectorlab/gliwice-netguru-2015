# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(email: 'hectorlab@outlook.com', password: 'password', firstname: 'Bartosz', lastname: 'Kolodziej', admin: true)
User.create(email: 'user1@mail.pl', password: 'password', firstname: 'Userone', lastname: 'Kowalski')
User.create(email: 'user2@mail.pl', password: 'password', firstname: 'Usertwo', lastname: 'Adamski')
User.create(email: 'user3@mail.pl', password: 'password', firstname: 'Userthree', lastname: 'Nowak')
User.create(email: 'user4@mail.pl', password: 'password', firstname: 'Userfour', lastname: 'Wiśniewski')
User.create(email: 'user5@mail.pl', password: 'password', firstname: 'Userfive', lastname: 'Wozignój')

Category.create(name: 'Movies')

Product.create(title: 'Movie1', description: 'Lorem ipsum, lorem ipsum', price: '45.99', category_id: 1, user_id: 1)
Product.create(title: 'Movie2', description: 'Lorem ipsum, ipsum lorem', price: '34.99', category_id: 1, user_id: 1)

Review.create(content: 'Cool movie.', rating: 4, product_id: 1, user_id: 1)
Review.create(content: 'Bad Movie', rating: 1, product_id: 1, user_id: 2)