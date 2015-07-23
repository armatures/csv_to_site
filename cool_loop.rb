
movie_titles = read_csv_file('title_file.csv')

puts '<table><tr><th>Movie Titles</th></tr>'

movie_titles.each do |title|
  puts "<tr><td>#{title}</td></tr>"
end
puts '</table>'
