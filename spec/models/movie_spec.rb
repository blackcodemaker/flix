require 'spec_helper'

describe "A movie" do
	it "is a flop if the total gross is less than $50M" do
		movie = Movie.new(total_gross: 40000000.00)

		expect(movie.flop?).to be_true
	end

	it "is not a flop if the total gross is greater than $50M" do
		movie = Movie.new(total_gross: 60000000.00)

		expect(movie.flop?).to be_false
	end

	it "is released when the released on date is in the past" do 
		movie = Movie.create(movie_attributes(released_on: 3.months.ago))

		expect(Movie.released).to include(movie)
	end

	it "is not relesed when the released on date is in the future" do
		movie = Movie.create(movie_attributes(released_on: 3.months.ago))

		expect(Movie.released).not_to include(movie)
	end

	it "released movies ordered with the most recently-released movie first" do
		movie1 = Movie.create(movie_attributes(released_on: 3.months.ago))
		movie2 = Movie.create(movie_attributes(released_on: 2.months.ago))
		movie3 = Movie.create(movie_attributes(released_on: 1.month.ago))

		expect(Movie.released).to eq([movie1, movie2, movie3])
	end
end