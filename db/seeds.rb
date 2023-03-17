# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
User.create(email: "anything@email.com", password: "123456", first_name:"", last_name:"")
User.create(email: "john@email.com", password: "123456", first_name:"John", last_name:"Smith")
User.create(email: "janeg@email.com", password: "123456", first_name:"Jane", last_name:"Walt")
User.create(email: "mark@email.com", password: "123456", first_name:"Mark", last_name:"Pane")
User.create(email: "tessa@email.com", password: "123456", first_name:"Tessa", last_name:"Green")
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Car.create(brand: "Red_toyota" , model: "Corolla" , fuel_type: "disel", transmission: "Manual", year_of_production: "2010", user: User.first)
Car.create(brand: "Honda red", model: "Civic", fuel_type: "disel", transmission: "Manual", year_of_production: "2008", user: User.first)
Car.create(brand: "Audi", model: "A3", fuel_type: "Petrol", transmission: "Automatic", year_of_production: "2015", user: User.first)
Car.create(brand: "Nissan", model: "Micra", fuel_type: "Petro", transmission: "Manual", year_of_production: "2012", user: User.first)
Car.create(brand: "Toyota_white", model: "Auris", fuel_type: "disel", transmission: "Manual", year_of_production: "2015", user: User.first)
Car.create(brand: "Fiat", model: "Panda", fuel_type: "disel", transmission: "Manual", year_of_production: "2016", user: User.first)

Booking.create(start_date: Thu, 16 Mar 2023, end_date: Tue, 19 May 2023, status: "pending",car_id: 2,user_id: 1,)
Booking.create(start_date: Thu, 20 May 2023, end_date: Tue, 25 June 2023, status: "pending",car_id: 3,user_id: 2,)
Booking.create(start_date: Thu, 22 April 2023, end_date: Tue, 28 April 2023, status: "pending",car_id: 4,user_id: 3,)
Booking.create(start_date: Thu, 05 June 2023, end_date: Tue, 16 June 2023, status: "pending",car_id: 5,user_id: 4,)
Booking.create(start_date: Thu, 1 Juli 2023, end_date: Tue, 03 Juli 2023, status: "pending",car_id: 6,user_id: 5,)
