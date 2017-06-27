require 'csv'

# This assumes:
#   - Ruby 1.9's CSV library, if you are using 1.8, use FasterCSV.
#

# https://raw.github.com/hadley/data-baby-names/master/baby-names.csv
csv_fname = "baby-names.csv"

# the key is the column in the csv to check, the value is what to match in that
# column
search_criteria =  { 'name' => 'Ruby', 'sex' => 'girl' }

#   - The CSV has a header line, if not look at :headers option in CSV.new
#     http://ruby-doc.org/stdlib-1.9.3/libdoc/csv/rdoc/CSV.html#method-c-new
options = { :headers    => :first_row,
            :converters => [ :numeric ] }

# we'll save the matches here
matches = nil

# save a copy of the headers
headers = nil

CSV.open( csv_fname, "r", options ) do |csv|

  # Since CSV includes Enumerable we can use 'find_all'
  # which will return all the elements of the Enumerble for
  # which the block returns true

  matches = csv.find_all do |row|
    match = true
    search_criteria.keys.each do |key|
      match = match && ( row[key] == search_criteria[key] )
    end
    match
  end
  headers = csv.headers
end

# dump the results, sorted by percent column descending
matches.sort_by { |r| r['percent'] }.reverse.each do |row|
  parts = headers.map { |h| "#{h}: #{row[h]}".ljust(20) }
  puts parts.join(" ")
end

__END__
jeremy@stiletto:~/tmp ruby-1.9.2-p290 % ruby search-csv.rb
year: 1911           name: Ruby           percent: 0.007637    sex: girl
year: 1912           name: Ruby           percent: 0.007586    sex: girl
year: 1913           name: Ruby           percent: 0.007501    sex: girl
year: 1919           name: Ruby           percent: 0.007094    sex: girl
year: 1916           name: Ruby           percent: 0.007079    sex: girl
year: 1915           name: Ruby           percent: 0.007066    sex: girl
year: 1914           name: Ruby           percent: 0.007057    sex: girl
year: 1910           name: Ruby           percent: 0.006897    sex: girl
