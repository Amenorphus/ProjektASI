# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
500.times do
    Zwierzak.create(
        imie: Faker::Name.first_name,
        gatunek: "pies",
        rasa: "mops",
        data_ur: Faker::Date.between(10.years.ago, Date.today))
end