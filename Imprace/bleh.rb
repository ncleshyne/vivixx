require 'CSV'
class Cars
  attr_accessor :code, :make, :price, :top_speed, :gas_tank_size
  def initialize(hash)
    @code = hash[:code].to_i
    @make = hash[:make].to_s
    @price = hash[:price].to_i
    @top_speed = hash[:top_speed].to_s
    @gas_tank_size = hash[:gas_tank_size].to_s
  end
  #initialize from CSV::row
  def self.from_csv_row(row)
    self.new({
      code: row['code'].to_i,
      make: row['make'].to_s,
      price: row['price'].to_i,
      top_speed: row['top_speed'].to_s,
      gas_tank_size: row['gas_tank_size'].to_s,
      })
  end
  HEADERS = ['code', 'make', 'price', 'top_speed', 'gas_tank_size']
  def to_csv_row
    CSV::Row.new(HEADERS, [code, make, price, top_speed, gas_tank_size])
  end
end
def car_orders
  puts "Hello! What is your name?".center(115, '=')
  $name = gets.chomp.capitalize
  CSV.foreach('cars.csv', headers: true) do |row|
    $car_menu = Cars.from_csv_row(row)
  puts "        Car details: "
  puts "    Code: #{$car_menu.code}"
  puts "    Model: #{$car_menu.make}"
  puts "    Price:: $#{$car_menu.price.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse}"
  puts "    Top speed: #{$car_menu.top_speed}"
  puts "    Gas Tank Size: #{$car_menu.gas_tank_size} liters"
  end
  puts "\n"
  puts "#{$name}, which car would you like to order? Enter the code please."
  $car_ord = gets.chomp.downcase
  $sub = $car_menu.price.to_i
#  if $car_ord == $car_menu.code
    $car_track = $car_menu.make
    $sub = $car_menu.price
#  end
  print "\n"
end
def car_customize
  $customize = [  {code: 1, option: "Wheel size", price: 800},
                  {code: 2, option: "Color", price: 500},
                  {code: 3, option: "Rim", price: 500},
                  {code: 4, option: "Lights", price: 500},
                  {code: 5, option: "Tint", price: 500},
              ]
  puts "#{$name}, what would you like to change with your car?"
  puts "\n"
  for x in 1..$customize.length
    puts "#{x}. #{$customize[x-1][:option]} Price: $#{$customize[x-1][:price]}"
  end
  puts "Just enter the number: "
  $custom = gets.chomp.to_i
  puts "\n"
  $customize.each do |info|
    if $custom == info[:code]
      $cc = info[:price].to_i
    end
  end
end
car_orders
car_customize
$total = $cc.to_i + $sub.to_i
    puts "Your total is #{$total.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse}"
    puts "#{$car_track}"
