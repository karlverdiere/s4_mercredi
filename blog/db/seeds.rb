# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do |index|
  user = User.create!(first_name: "prenom#{index}",last_name: "nom#{index}" email: "email#{index}@example.com")
end

10.times do |index|
  user = User.create!(titre: "titre#{index}", content: "contenue#{index}")
end

5.times do
categorie = Categorie.create!(name: Faker::Book.genre)
end

15.times do |index|
  commentaire = Commentaire.create!(content: "content#{index}")
end

15.times do
 like = Like.create!(
    user_id: Faker::Number.between(User.first.id, User.last.id),
    article_id: Faker::Number.between(Article.first.id, Article.last.id))
end
