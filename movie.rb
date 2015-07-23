class Movie
	attr_accessor :title, :director, :year
	def initialize(parameters)
		@title = parameters[:title]
		@director = parameters[:director]
		@year = parameters[:year]
	end
end