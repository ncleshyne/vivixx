require 'csv'
require 'SecureRandom'

# skip past the headers by setting the headers to true
CSV.open("customers.csv", 'a+') do |csv_file|

  # add a row to the csv file
  csv_file << [SecureRandom.uuid, 'Bob', 'McGee', 42]
  csv_file << ['Nicole Shayne', '2020', 'McCarren House', 4.0]

end
