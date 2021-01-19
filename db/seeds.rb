# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Users.create(name: "テスト太郎1", authority: 1, registration_date: 2020 / 1 / 1, registration_quantity: 1, login_date: 2020 / 1 / 2, user_id: 1)

Users.create(name: "テスト太郎2", authority: 2, registration_date: 2020 / 2 / 2, registration_quantity: 2, login_date: 2020 / 2 / 12, user_id: 2)
