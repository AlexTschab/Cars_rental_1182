# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
User.create(email: "anything@email.com", password: "123456")
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Car.create(brand: "Red_toyota" , model: "Corolla" , fuel_type: "disel", transmission: "Manual", year_of_production: "2010", user: User.first)
Car.create(brand: "Honda red", model: "Civic", fuel_type: "disel", transmission: "Manual", year_of_production: "2008", user: User.first)
Car.create(brand: "Audi", model: "A3", fuel_type: "Petrol", transmission: "Automatic", year_of_production: "2015", user: User.first)
Car.create(brand: "Nissan", model: "Micra", fuel_type: "Petro", transmission: "Manual", year_of_production: "2012", user: User.first)
Car.create(brand: "Toyota_white", model: "Auris", fuel_type: "disel", transmission: "Manual", year_of_production: "2015", user: User.first)
Car.create(brand: "Fiat", model: "Panda", fuel_type: "disel", transmission: "Manual", year_of_production: "2016", user: User.first)
