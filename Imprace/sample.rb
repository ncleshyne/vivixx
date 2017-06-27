require 'CSV'

csv_data = CSV.read('accounts.csv')
keys = ['code', 'item', 'price']
CSV.read('accounts.csv').map {|a| Hash[ keys.zip(a) ]}
puts arr[i]["code"]
