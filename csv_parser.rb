#! /usr/bin/ruby
require 'csv'

class CsvParser
	def parse(filepath)
		parsed = []
		CSV.foreach(filepath, headers: true) do |row|
			cleaned = clean_row row
			parsed << Movie.new(cleaned)
		end
		return parsed
	end

	def clean_row(row)
		cleaned = {}
		row.each do |pair|
			#puts "key: '#{pair.first}'"
			cleaned[pair.first.strip]=pair[1]
			#puts "cleaned key: '#{pair.first.strip}'"
		end
		cleaned
	end
end

