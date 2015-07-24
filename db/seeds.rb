# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

users = User.all
item = Item.all

  user = User.new(
    name: 'John',
    email:    'john@example.com',
    password: 'helloworld'
  )
  user.skip_confirmation!
  user.save!

  user = User.new(
    name: 'Paul',
    email:    'paul@example.com',
    password: 'helloworld'
  )
  user.skip_confirmation!
  user.save!

  user = User.new(
     name: 'George',
     email:    'george@example.com',
     password: 'helloworld'
  )
  user.skip_confirmation!
  user.save!

   user = User.new(
     name: 'Ringo',
     email:    'ringo@example.com',
     password: 'helloworld'
  )
  user.skip_confirmation!
  user.save!

user = User.new(
     name: 'Yoko',
     email:    'yoko@example.com',
     password: 'helloworld'
  )
  user.skip_confirmation!
  user.save!

# create items
 20.times do
     Item.create!(
     user: users.sample,
     name: Faker::Lorem.sentence,
 )
 end


puts "Seed finished"
puts "#{User.count} users"
puts "#{Item.count} items"
