require 'csv'
def banner
  puts "Welcome to FOOD HUB!"
end
class String
  def capitalize_each
    self.split(" ").each{|word| word.capitalize!}.join(" ")
  end
  def capitalize_each!
    replace capitalize_each
  end
end
def create_account
  puts "Please enter the following: "
  print "Full Name: "
  name = gets.chomp.capitalize_each
  print "Contact number: "
  contact_number = gets.chomp.to_i
  print "Email: "
  email = gets.chomp.downcase
  print "Load: "
  money = gets.chomp.to_f
  puts "WELCOME, #{name}! Now you can buy using your FoodHub card! Thank you!"
  $mon = money
end
def showMenu
  $foodtruckList = [  {code: 1, foodtruck: "Munchiez"},
                      {code: 2, foodtruck: "Pendong Food Bug"},
                      {code: 3, foodtruck: "Yamashita"},
                      {code: 4, foodtruck: "Road Grille"},
                      {code: 5, foodtruck: "Livelong"},
                      {code: 6, foodtruck: "Cheat Day"},
                      {code: 7, foodtruck: "Binge Beetle"}
                  ]
  puts "_____________________"
  puts %q{
            WELCOME TO FOOD HUB!
        Please choose your Food Truck:
  }
  for x in 1..$foodtruckList.length
    puts "#{x}. #{$foodtruckList[x-1][:foodtruck]}"
  end
end

def have_account
  puts "Do you already have a FoodHub Account? [y/n]"
  have = gets.chomp.downcase
end

if have_account == 'n'
  create_account
  showMenu
else
  showMenu
end
