# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: 'admin@gmail.com', password: '1q2w3e4r', password_confirmation: '1q2w3e4r',tur: 'admin')
User.create(email: 'teacher@gmail.com', password: '1q2w3e4r', password_confirmation: '1q2w3e4r',tur: 'teacher')
User.create(email: 'student@gmail.com', password: '1q2w3e4r', password_confirmation: '1q2w3e4r',tur: 'student')
User.create(email: 'instution@gmail.com', password: '1q2w3e4r', password_confirmation: '1q2w3e4r',tur: 'instution')
User.create(email: 'radiologist@gmail.com', password: '1q2w3e4r', password_confirmation: '1q2w3e4r',tur: 'radiologist')
