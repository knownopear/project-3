# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



20.times do |index|
    User.create(
        user_id: rand(1..50),
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        phone: Faker::PhoneNumber.phone_number,
        card_type: Faker::Business.credit_card_type,
        card_number: Faker::Business.credit_card_number,
        card_expiry: Faker::Business.credit_card_expiry_date,
        )
end

