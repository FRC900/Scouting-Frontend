# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

zebra = Team.create(name: "Zebracorns", number:"900")
Team.create(name: "RoboDogs", number:"435")

sc = Competition.create(name: "Palmetto", year:"2014-02-02")
nc = Competition.create(name: "NC", year:"2014-03-02")

CompetitionsTeam.create(competition: nc, team:zebra)
CompetitionsTeam.create(competition: sc, team:zebra)

Scouter.create(name:"Meg", number:"1")
Scouter.create(name:"Marshall", number:"2")

Match.create(number:"1", competition: nc)
Match.create(number:"2", competition: nc)