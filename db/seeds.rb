# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Dashboard.delete_all
Dashboard.create(label: 'Bought', value: 2, color: 'red')
Dashboard.create(label: 'Other', value: 1, color: 'gray')
Dashboard.create(label: 'Waiting', value: 5, color: 'brown')
Dashboard.create(label: 'Stand By', value: 4, color: 'purple')
Dashboard.create(label: 'New', value: 3, color: 'green')
Dashboard.create(label: 'Failed', value: 2, color: 'black')
