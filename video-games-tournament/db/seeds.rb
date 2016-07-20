# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

tourneyA = Tournament.create!(name: "Pokemon Catching Championship")
tourneyB = Tournament.create!(name: "Smash Brothers Tournament")
tourneyC = Tournament.create!(name: "Tetris Tournament")

playerA = Player.create!(name: "Izzy Ironside")
playerB = Player.create!(name: "Nizar")
playerC = Player.create!(name: "Josh")
playerD = Player.create!(name: "Nick")
playerE = Player.create!(name: "Alia")
playerF = Player.create!(name: "Ariel")
playerG = Player.create!(name: "Alida")
playerH = Player.create!(name: "Daniel")


tourneyA.players.push( playerA )
tourneyA.players.push( playerB )
tourneyA.players.push( playerC )
tourneyA.players.push( playerD )

tourneyB.players.push( playerE )
tourneyB.players.push( playerF )
tourneyB.players.push( playerG )
tourneyB.players.push( playerH )
