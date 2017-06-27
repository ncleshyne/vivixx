require 'CSV'
$sub = 0
$cc = 0
$mon = 0
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
  puts "Hello! What is your name?"
  $name = gets.chomp.capitalize
  $opened_file = File.new($name + '.txt', 'w+')
  system 'cls'
  $opened_file.write("Buyer: #{$name}")
  $opened_file.write("\n")
  if $name.include? "Rizal"
    puts "Happy Birthday! We miss you pambansang chickboy!"
  end
  CSV.foreach('cars.csv', headers: true) do |row|
    $car_menu = Cars.from_csv_row(row)
  puts "  Car details:  ".center(140, '$')
  puts "Code: #{$car_menu.code}".center(140, ' ')
  puts "Model: #{$car_menu.make}".center(140, ' ')
  puts "Price: $#{$car_menu.price.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse}".center(140, ' ')
  puts "Top speed: #{$car_menu.top_speed}".center(140, ' ')
  puts "Gas Tank Size: #{$car_menu.gas_tank_size} liters".center(140, ' ')
  end
  blah = gets.chomp
  puts "\n"
  puts "\t#{$name}, which car would you like to order? Enter the code please. ".center(140, '*')
  $car_ord = gets.chomp.to_i
  CSV.foreach('cars.csv', headers: true) do |row|
    $car_men = Cars.from_csv_row(row)
    if $car_ord == $car_men.code
  #  if $car_ord == $car_menu.code
      $mon = $mon + $car_menu.price.to_i
      $car_track = $car_menu.make
      $sub = $car_menu.price.to_i
      $opened_file.write("Car: #{$car_track}")
      $opened_file.write("\n")
      print "\n"
      puts "Great! That would be $#{$car_men.price.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse}! Thank you~"
    end
  end
  #end
  #print "\n"
  #puts "Great! That would be $#{$car_menu.price.to_i}! Thank you~"
  end
def car_customize
  $customize = [  {code: 1, option: "Wheel size", price: 800},
                  {code: 2, option: "Color", price: 500},
                  {code: 3, option: "Rim", price: 500},
                  {code: 4, option: "Lights", price: 500},
                  {code: 5, option: "Tint", price: 500},
              ]
  puts "\t#{$name}, which would you like to change?\t".center(140, '*')
  puts "\n"
  for x in 1..$customize.length
    puts "#{x}. #{$customize[x-1][:option]} - Price: $#{$customize[x-1][:price]}".center(140, ' ')
  end
  puts "\n"
  puts "  Just enter the number:  ".center(140, '*')
  $custom = gets.chomp.to_i
  puts "\n"
end

def menu
  puts "  Menu options  ".center(140, '*')
  puts "1. Buy Car".center(140, ' ')
  puts "2. Customize".center(140, ' ')
  puts "3. Pay and Exit".center(140, ' ')
  puts "".center(140, '*')
end
loop do
  menu
  command = gets.chomp.to_s

  case command
  when "1"
    car_orders

  when "2"
    car_customize
    $customize.each do |info|
      while $custom == info[:code]
        case $custom
        when 1
          puts "Please go to the WHEELS station to start the process. $#{info[:price]} will be added to your cart. Thank You!".center(140, ' ')
          $cc = info[:price].to_i
          $ct = info[:option].to_s
          $opened_file.write("Customized: #{$ct}")
          $opened_file.write("\n")
          $mon = $mon + $cc
          break

        when 2
          puts "Please go to the COLOR department to start the process. $#{info[:price]} will be added to your cart. Thank You!".center(140, ' ')
          $cc = info[:price].to_i
          $ct = info[:option].to_s
          $opened_file.write("Customized: #{$ct}")
          $opened_file.write("\n")
          $mon = $mon + $cc
          break

        when 3
          puts "Please go to the RIM station to start the process. $#{info[:price]} will be added to your cart. Thank You!".center(140, ' ')
          $cc = info[:price].to_i
          $ct = info[:option].to_s
          $opened_file.write("Customized: #{$ct}")
          $opened_file.write("\n")
          $mon = $mon + $cc
          break

        when 4
          puts "Please go to the LIGHTS station to start the process. $#{info[:price]} will be added to your cart. Thank You!".center(140, ' ')
          $cc = info[:price].to_i
          $ct = info[:option].to_s
          $opened_file.write("Customized: #{$ct}")
          $opened_file.write("\n")
          $mon = $mon + $cc
          break

        when 5
          puts "Please go to the TINT station to start the process. $#{info[:price]} will be added to your cart. Thank You!".center(140, ' ')
          $cc = info[:price].to_i
          $ct = info[:option].to_s
          $opened_file.write("Customized: #{$ct}")
          $opened_file.write("\n")
          $mon = $mon + $cc
          break

      end
    end
  end
  when "3"
    $total = $mon
    puts "Your grandtotal is #{$total.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse}. Please pay at the cashier using your credit card. Thank You!".center(140, '*')
    $opened_file.write("Total is #{$total}.")
    $opened_file.rewind
    # Read entire file from beginning to end
    puts "=" * 15
    print $opened_file.read
    # We are done with the file
    $opened_file.close

    break
  end
end
