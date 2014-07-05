# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Movie.create!([
  {
    title: "Iron Man",
    rating: "PG-13",
    total_gross: 318412101.00,
    description: "Tony Stark builds an armored suit to fight the throes of evil",
    released_on: "2008-05-02"
  },
  {
    title: "Superman",
    rating: "PG",
    total_gross: 134218018.00,
    description: "Clark Kent grows up to be the greatest super-hero",
    released_on: "1978-12-15"
  },
  {
    title: "Spider-Man",
    rating: "PG-13",
    total_gross: 403706375.00,
    description: "Peter Parker gets bit by a genetically modified spider",
    released_on: "2002-05-03"
  },
  {
    title: "Catwoman",
    rating: "PG-13",
    total_gross: 40200000.00,
    description: "Patience Philips has a more than respectable career as a graphic designer",
    released_on: "2004-07-23"
  },
  {
  	title: "Avengers",
  	rating: "PG-13",
  	total_gross: 1518594910.00,
  	description: "The worlds greatest heros battle Loki and his intergalactic army.",
  	released_on: "2012-04-11"
  },
  {
  	title: "Dredd",
  	rating: "PG-13",
  	total_gross: 41000000,
  	description: "Dredd and his apprentice partner, Judge Anderson, are forced to bring order to a 200-storey high-rise block.",
  	released_on: "2012-07-11"

  }
])