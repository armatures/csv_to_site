require 'rspec'
require_relative '../movie'

describe Movie do
  it 'saves known fields to an object' do
    parameters = { title: 'title1',
		   director: 'director1',
		   year: 'year1' }
    movie = Movie.new parameters
    expect(movie.title).to eq('title1')
    expect(movie.director).to eq('director1')
    expect(movie.year).to eq('year1')
  end
end
