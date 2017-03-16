So you've only got to run a single call in your terminal (open a new terminal window and it should open in your home directory by default):

`ruby <path to this repo>/spec/fixtures/basic-test.csv <path to this repo>/spec/fixtures/template-blast-sked.html.erb <path to wherever you want your output>.html `

This is a call to use `ruby` to run a script found at `<path to this repo>/csv_to_site`. This script takes three arguments: a csv, an erb template, and a file to write. Even if the terminal is unfamiliar you'll be able to get by with this single command.

If you want to use a different CSV, you can change the csv argument in the command. If you want to change the template you edit the .erb file (or pass in a path to a different one). Erb (Embedded Ruby) is just like the template you wrote before, just with `<% %>` and `<%= %>` to put in code and fields, respectively.

Adding more fields to the csv is a little trickier and will involve editing the `movie.rb` file. That file has a pattern that should be possible to copy (the weird fields are the ones that can only be true or false: `filmmaker_attending` and `special_guest_attending`). The new field header should be the same as the field you add to movie.rb.
