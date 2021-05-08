# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#

puts "Createting Airlines"

airlines = Airline.create([
  {
    name: "Air Canada",
    image_url: "data:image/png;base64,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"
  },
  {
    name: "Air Transat",
    image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Air_Transat_logo.svg/1200px-Air_Transat_logo.svg.png"
  },
  {
    name: "United Airlines",
    image_url: "https://1000logos.net/wp-content/uploads/2017/06/United-logo.jpg"
  },
  {
    name: "Delta",
    image_url: "https://www.algonquincollege.com/hospitalityandtourism/files/2014/04/Delta-Logo.jpg"
  },
  {
    name: "JetBlue",
    image_url: "https://oceanfdn.org/wp-content/uploads/2019/07/JetBlue.png"
  },

])

reviews = Review.create([
  {
    title: "Great airline",
    description: "I had a lovely time",
    score: 5,
    airline: airlines.first
  },
  {
    title: "Bad airline",
    description: "I had a bad time",
    score: 1,
    airline: airlines.first
  },

])