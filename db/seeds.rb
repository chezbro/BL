# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


TraitType.destroy_all

traits = TraitType.create ([

{name: "Adventurous"},
{name: "Affable"},
{name: "Conscientious"},
{name: "Cultured"},
{name: "Dependable"},
{name: "Discreet"},
{name: "Fair"},
{name: "Fearless"},
{name: "Observant"},
{name: "Impartial"},
{name: "Independent"},
{name: "Optimistic"},
{name: "Intelligent"},
{name: "Keen"},
{name: "Gragarious"},
{name: "Persistent"},
{name: "Capable"},
{name: "Charming"},
{name: "Precise"},
{name: "Confident"},
{name: "Dutiful"},
{name: "Encouraging"},
{name: "Reliable"},
{name: "Exuberant"},
{name: "Helpful"},
{name: "Humble"},
{name: "Suave"},
{name: "Imaginative"},
{name: "Meticulous"},
{name: "Obedient"},
{name: "Trusting"},
{name: "Valiant"}

])

puts "#{traits.count} traits created"


