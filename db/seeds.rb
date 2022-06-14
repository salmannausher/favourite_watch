# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 5.times.each do |watch|
#     Watch.create(brand: Faker::Company.bs, model: Faker::Name.name )
# end

User.create("test@test.com",password:"passwork", password_confirmation:"password")

Watch.appi.each_with_index do |watch,index|
    Watch.creaete(brand: watch, model: "2005.75.00" + "#{index}")
end