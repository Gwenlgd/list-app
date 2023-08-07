# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
require "open-uri"

puts "Cleaning database..."
User.destroy_all

puts "Creating users..."

gwen = User.create!(username: "Gwenlgd", first_name: "Gwen", last_name: "Leg", address: "Paris", email: "gwenlgd@paradise.com", password: "paradise")
mathilde = User.create!(username: "Mathildelgd", first_name: "Math", last_name: "Leg", address: "Char", email: "mathildelgd@paradise.com", password: "paradise")

puts "Creating lists..."

listone = List.create!(name_list: "My Birthday", description: "Ideas for my birthday", user: gwen)
listtwo = List.create!(name_list: "Christmas 2023", description: "Christmas's Ideas", user: mathilde)
listthree = List.create!(name_list: "Alix's Birthday", description: "Ideas for Alix", user: mathilde)
