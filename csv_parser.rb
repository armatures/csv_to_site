#! /usr/bin/ruby
require 'csv'

class CsvParser
  def parse(filepath)
    puts "parsing #{filepath}"
    parsed = []
    CSV.foreach(filepath, headers: true) do |row|
      puts "read row: #{row.inspect}"
			puts "title: #{row["title"]}"
			parsed << Movie.new(row)
    end
		puts "parsed #{parsed.length} rows from #{filepath}"
    return parsed
  end

end

