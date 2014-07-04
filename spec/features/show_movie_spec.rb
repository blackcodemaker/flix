require 'spec_helper'

describe "Showing an individual movie" do
	it "should show the movie by id" do
		
		movie = Movie.create(
			title: "Iron Man",
			rating: "PG-13",
			total_gross: 318412101.00,
			description: "Tony Stark builds an armored suit to fight evil.",
			released_on: "2008-05-02")

		visit movie_url(movie)

		expect(page).to have_text(movie.title)
		expect(page).to have_text(movie.rating)
		expect(page).to have_text(movie.description[0..9])
		expect(page).to have_text(movie.released_on)
		expect(page).to have_text("$318,412,101.00")
	end
end