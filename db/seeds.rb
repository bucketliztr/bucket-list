# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create(name: 'Test1 User', email: 'test2@email.com', age: 15, location: 'NYC')
user1.save
list_items1 = user1.list_items.create([{name: 'Learn to Code'}, {name: 'Build a house'}])

user2 = User.create( name: 'Test2 User', email: 'test1@email.com', age: 25, location: 'Boston')
user2.save
list_item2 = user2.list_items.create([{name: 'Travel the world'}, {name: 'Learn to code'}])


# user = User.create(email:'test@gmail.com', password: 'test', password_confirmation:'test')
# student = user.students.create(firstname:'firstname', lastname:'lastname',
