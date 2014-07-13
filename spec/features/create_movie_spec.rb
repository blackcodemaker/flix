require 'spec_helper'

describe "Creating movies" do
	it "creates a new movie and adds it to the database" do
		visit movies_url

		click_link "Add New Movie"

		expect(current_path).to eq(new_movie_path)

		fill_in "Title", with: "New Movie Title"
		fill_in "Description", with: "Saving the world."
		fill_in "Rating", with: "PG-13"
		select (Time.now.year - 1).to_s, :from => "movie_released_on_1i"

		click_button "Create Movie"

		expect(current_path).to eq(movie_path(Movie.last))

		expect(page).to have_text('New Movie Title')
	end
end