# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Therapist Name
5.times do |index|
  Therapist.create(
    name: Faker::Name.first_name
  )
end


# Service & Types
Service.create(
  service_type: 1,
  name: "The Day's Respite",
  description: "Our most popular package, the light to medium pressured massage helps relieve stress, reduce pain, boost mood and promote relaxation.",
  price: 120,
  slots_taken: 2,
  therapist_id: Therapist.find(1).id
)

Service.create(
  service_type: 2,
  name: "The Gentleman",
  description: "We prepare you for the trials of a social event. We'll make you look as good as we make you feel.",
  price: 110,
  slots_taken: 2,
  therapist_id: Therapist.find(2).id
)

Service.create(
  service_type: 3,
  name: "The Tenderizer",
  description: "We focus on the deepest layers of muscle tissue, tendons and fascia, transforming your tight, aching and sore body into a relaxed one.",
  price: 110,
  slots_taken: 2,
  therapist_id: Therapist.find(3).id
)

Service.create(
  service_type: 4,
  name: "The 'Kick Back & Relax'",
  description: "The longest package, we focus on both your physical and mental well-being. The movement is slower and the pressure is deeper and concentrated on areas of tension and pain. At the end of the treatment, you will have forgotten about the stresses of the day.",
  price: 180,
  slots_taken: 4,
  therapist_id: Therapist.find(4).id
)

Service.create(
  service_type: 5,
  name: "The Busy Man",
  description: "For the informed man, we take half an hour of your busy day to ensure that your muscles have relaxed, you feel refreshed, and that your tensions have melted away.",
  price: 80,
  slots_taken: 1,
  therapist_id: Therapist.find(5).id
)
