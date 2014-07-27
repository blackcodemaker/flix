require 'spec_helper'

describe "Deleting a movie" do
	it "should destroy the movie and show the movie listing after deleting"	do
		movie = Movie.create(movie_attributes)

		visit movie_path(movie)

		click_link "Delete"

		expect(current_path).to eq(movies_path)
		expect(page).not_to have_text(movie.title)
	end
end
