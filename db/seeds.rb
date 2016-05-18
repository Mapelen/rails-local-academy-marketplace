# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Destination.destroy_all

Destination.create!(name: "Silicon Valley", description: "Visit and gest inspired by the biggest tech hub in the world", picture_url: "http://www.c2csanfrancisco.com/wp-content/uploads/2012/03/golden-gate-bridge-and-beach-cropped.jpg", airport: "SFO")
Destination.create!(name: "Brazil", description: "Brazil is not only known for it's wonderful beaches but also for its growing tech industry. Get inspired by the hottest tech area in the world", picture_url: "https://iso.500px.com/wp-content/uploads/2014/06/2048-4.jpg", airport: "SAO" )
Destination.create!(name: "Israel", description: "get to know the second biggest tech hub after the Silicon Valley. Meet the brightest enginners in the world", picture_url: "http://i.huffpost.com/gen/1775670/images/o-TEL-AVIV-facebook.jpg", airport: "TLV")
Destination.create!(name: "Central Europe", description: "From Paris to Berlin, through Brussels. Meet the growing text landscape of Central Europe", picture_url: "https://scdn3.thomascook.com/crop?imageUrl=http://magnolia.production.thomascook.io/wcms/dam/tcuk/city-breaks/paris/1hero1.jpg&maxWidth=1200&maxHeight=0", airport: "CDG")
s = Destination.create!(name: "Shenzhen", description: "Let's hop on a special journey and dive into the factory of the world!", picture_url: "https://scdn3.thomascook.com/crop?imageUrl=http://magnolia.production.thomascook.io/wcms/dam/tcuk/city-breaks/paris/1hero1.jpg&maxWidth=1200&maxHeight=0", airport: "HKG")

# Destination.create(name: "Southern Europe")

# Destination.create(name: "India")
# Destination.create(name: "U.S. Northeast")
# Destination.create(name: "South east Asia")

Expedition.create!(title: "Hacking like an IOT startuper", starts_on: "July 1st, 2016", theme: "IOT", capacity: "10", description: "Come in Shenzhen and know how to hack like a sucessessful Kickstarter entrepreneur.", destination: s)


Participation.create(user_id: 1, expedition_id: 1, is_company: true)
