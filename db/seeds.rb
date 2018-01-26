# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

## Service & Types
3.times do |index|
  Service.create(
    service_type: 1,
    name: Faker::Ancient.god,
    description: Faker::Science.element,
    price: Faker::Number.decimal(2),
      therapist_id: Therapist.find(1).id
  )
end

3.times do |index|
  Service.create(
    service_type: 2,
    name: Faker::Ancient.god,
    description: Faker::Science.element,
    price: Faker::Number.decimal(2),
      therapist_id: Therapist.find(2).id
  )
end

3.times do |index|
  Service.create(
    service_type: 3,
    name: Faker::Ancient.god,
    description: Faker::Science.element,
    price: Faker::Number.decimal(2),
    therapist_id: Therapist.find(3).id
  )
end

## Therapist Name
# 5.times do |index|
#   Therapist.create(
#     name: Faker::OnePiece.character
#   )
# end
