# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "clear database"
Job.destroy_all
Company.destroy_all

puts "creating companies..."

sparkasse = Company.create({name: 'Sparkasse', statement: '', logo: '', url: '', email: '', description: '', headquarters: ''})
katzencafé = Company.create({name: 'Katzencafé', statement: '', logo: '', url: '', email: '', description: '', headquarters: ''})
# {name: 'Santa', statement: '', logo: '', url: '', email: '', description: '', headquarters: ''}, {name: 'Breula', statement: '', logo: '', url: '', email: '', description: '', headquarters: ''}])
puts "companies created"

puts "creating jobs..."
job_one = Job.create({title: 'Head of finances', category: '', applying: '', description: '', company_id: Company.last[:id]})
job_two = Job.create({title: 'Schnurrmeisterin', category: '', applying: '', description: '', company_id: Company.first[:id]})
puts "jobs created"
