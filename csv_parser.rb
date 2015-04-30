#! /usr/bin/ruby
require 'csv'

class CsvParser
  def parse(filepath)
    puts "parsing #{filepath}"
    parsed = []
    CSV.foreach(filepath, headers: true) do |row|
      puts row.inspect
      parsed << row
    end
    return parsed
  end

end
