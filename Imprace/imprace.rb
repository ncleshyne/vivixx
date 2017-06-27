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
#
#
def showTrucks
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
#
#
def showMunchiezMenu
  $munchiezMenu = [
                      { code: 1, item: "Australian Porterhouse Steak", price: 205 },
                      { code: 2, item: "Australian Ribeye Steak", price: 160 },
                      { code: 3, item: "Double Ribeye Steak", price: 290 },
                      { code: 4, item: "Ginger Glazed Chicken Wings, 2pcs (with rice)", price: 115 },
                      { code: 5, item: "Ginger Glazed Chicken Wings, 3pcs (with rice)", price: 135 },
                      { code: 6, item: "6pcs Ginger Glazed Chicken Wings (Regular)", price: 175 },
                      { code: 7, item: "6pcs Ginger Glazed Chicken Wings (Spicy)", price: 185 }
                  ]

      puts "WELCOME TO MUNCHIEZ"

      for x in 1..$munchiezMenu.length
        puts "#{x}. #{$munchiezMenu[x-1][:item]} - #{$munchiezMenu[x-1][:price]}"
      end
end
#
#
def showPendongMenu
$pendongMenu =  [
                    { code: 1, item: "Chicken Kebab", price: 145 },
                    { code: 2, item: "Chicken Kebab (with rice)", price: 160 },
                    { code: 3, item: "Chicken Kebab (with rice and drinks)", price: 175 },
                    { code: 4, item: "Pork BBQ Platter (10 sticks)", price: 165 },
                    { code: 5, item: "Marinated Grilled Porkchop", price: 190 },
                    { code: 6, item: "Marinated Grilled Porkchop (with drinks)", price: 205 },
                    { code: 7, item: "Grilled Pork Steak", price: 185 },
                    { code: 8, item: "Pork BBQ Meal", price: 105 },
                    { code: 9, item: "Pork BBQ Meal (with drinks)", price: 120 },
                    { code: 10, item: "Grilled Pink Salmon", price: 115 },
                    { code: 11, item: "Grilled Pink Salmon (with drinks)", price: 130 },
                    { code: 12, item: "Pendong Lemonade Fizz (Green Apple, Passion Fruit, Watermelon)", price: 60 }
                ]

      puts "WELCOME TO PENDONG FOOD BUG"

      for x in 1..$pendongMenu.length
        puts "#{x}. #{$pendongMenu[x-1][:item]} - #{$pendongMenu[x-1][:price]}"
      end
end
#
#
def showYamashitaMenu
$yamashitaMenu = [
                    { code: 1, item: "Ramen (Soy sauced based)", price: 120},
                    { code: 2, item: "Miso Ramon", price: 140},
                    { code: 3, item: "Shio Ramen (Salt based)", price: 130},
                    { code: 4, item: "Pork ramen", price: 160},
                    { code: 5, item: "Spicy Ramen", price: 140},
                    { code: 6, item: "Wakame Ramen", price: 130},
                    { code: 7, item: "Miso corn butter", price: 200},
                    { code: 8, item: "Cantonese Ramen", price: 200},
                    { code: 9, item: "Yakisoba (Japanese style fried noodle)", price: 170},
                    { code: 10, item: "Cold Ramen ('Hiyashi Chuka')", price: 190},
                    { code: 11, item: "Chicken Curry", price: 160},
                    { code: 12, item: "Karaage Curry (Fried chicken)", price: 180},
                    { code: 13, item: "Shrimp Fried Curry", price: 180},
                    { code: 14, item: "Oyako don (Chicken wrapped with egg)", price: 150},
                    { code: 15, item: "Tanin don (Pork wrapped with egg)", price: 150},
                    { code: 15, item: "Karaage don (Fried chicken)", price: 150},
                    { code: 15, item: "Yakiniku don (Fried beef with special sauce)", price: 190},
                    { code: 15, item: "Shogayaki don (Ginger pork)", price: 190},
                    { code: 15, item: "Katsu don (Breaded pork with egg)", price: 210},
                    { code: 15, item: "Pork rice topping", price: 90},
                    { code: 15, item: "Spicy pork rice topping", price: 110},
                    { code: 15, item: "Chahan (Japanese fried rice)", price: 160},
                    { code: 15, item: "California mango rolls", price: 160},
                    { code: 15, item: "Salad maki", price: 150},
                    { code: 15, item: "Karaage rolls (Fried chicken)", price: 140},
                    { code: 15, item: "Onion salmon rolls", price: 170},
                    { code: 15, item: "Tekka maki (Tuna)", price: 150},
                    { code: 15, item: "Salmon maki", price: 150},
                    { code: 15, item: "Gyoza (Japanese dumpling 6 pcs)", price: 90},
                    { code: 15, item: "Karaage (Fried chicken 3 pcs)", price: 90},
                    { code: 15, item: "Shrimp Fries (with special sauce 4 pcs)", price: 140},
                    { code: 15, item: "Plain Japanese rice", price: 50}
                  ]

      puts "WELCOME TO YAMASHITA"

      for x in 1..$yamashitaMenu.length
        puts "#{x}. #{$yamashitaMenu[x-1][:item]} - #{$yamashitaMenu[x-1][:price]}"
      end
end
#
#
def showRoadGrilleMenu
$roadgrilleMenu = [
                  { code: 1, item: "Grilled Pork Ribs", price: 185},
                  { code: 2, item: "Grilled Quarter Chicken", price: 105},
                  { code: 3, item: "Grilled Hungarian Sausage", price: 115},
                  { code: 4, item: "SquadGoal Bundle (good for 4-6 persons)", price: 985},
                  { code: 5, item: "Chicken Wings", price: 175},
                  { code: 6, item: "Poutine", price: 115},
                  { code: 7, item: "Fries", price: 65},
                  { code: 8, item: "Grilled Corn", price: 55},
                  { code: 9, item: "Coleslaw", price: 45},
                  { code: 10, item: "Rice", price: 20},
                  { code: 11, item: "Deep Fried Ice Cream", price: 125},
                  { code: 12, item: "Mineshine Milk Tea", price: 55},
                  { code: 13, item: "Sola Iced Tea", price: 50},
                  { code: 14, item: "Mon Passion RTD Coffee", price: 55},
                  { code: 16, item: "Pineapple Juice", price: 40},
                  { code: 17, item: "Soda Cans", price: 35},
                  { code: 18, item: "Bottled water", price: 20},
                  { code: 19, item: "Brewed Coffee", price: 30},
                  { code: 20, item: "Italian SODA", price: 65},
                  { code: 21, item: "Regular sized Square Burger", price: 225},
                  { code: 22, item: "Giant Square Burger", price: 375},
                  { code: 23, item: "Giant Hotdog Sandwich w/ Fries (single)", price: 135},
                  { code: 24, item: "Sausage Sandwich w/ Fries (single)", price: 135}
                  ]

      puts "WELCOME TO ROAD GRILLE"

      for x in 1..$roadgrilleMenu.length
        puts "#{x}. #{$roadgrilleMenu[x-1][:item]} - #{$roadgrilleMenu[x-1][:price]}"
      end
end
#
#
def showLiveLongMenu
$livelongMenu = [
                  { code: 1, item: "Detox Smoothies (11 Different Flavors Available)", price: 120},
                  { code: 2, item: "Fruit Shakes (4 Different Flavors Available)", price: 60},
                  { code: 3, item: "Lemonade (3 Different Flavors Available)", price: 90},
                  { code: 4, item: "Matcha Shake", price: 100}
                  ]

      puts "WELCOME TO LIVE LONG"

      for x in 1..$livelongMenu.length
        puts "#{x}. #{$livelongMenu[x-1][:item]} - #{$livelongMenu[x-1][:price]}"
      end
end
#
#
def showCheatDayMenu
$cheatdayMenu =  [
                   { code: 1, item: "[BESTSELLER] Giant Taco", price: 165},
                   { code: 2, item: "[BESTSELLER] Quesadilla Tower", price: 195},
                   { code: 3, item: "[BESTSELLER] Pizza Quesadilla", price: 195},
                   { code: 4, item: "[BESTSELLER] Sisig Burrito", price: 185},
                   { code: 5, item: "Bagnet with Mexican Rice", price: 165},
                   { code: 6, item: "Dinakdakan Bagnet", price: 90},
                   { code: 7, item: "Chicken Mole", price: 145},
                   { code: 8, item: "Sopa de Bagnet", price: 140},
                   { code: 9, item: "Churros with Handmade Creamery", price: 120},
                   { code: 10, item: "Halohalo Quesadilla", price: 120},
                   { code: 11, item: "Cream Cheese with Yema Quesadilla", price: 120}
                 ]

puts "WELCOME TO CHEAT DAY"
      for x in 1..$cheatdayMenu.length
        puts "#{x}. #{$cheatdayMenu[x-1][:item]} - #{$cheatdayMenu[x-1][:price]}"
      end
end
#
#
def showBingeBeetleMenu
$bingebeetleMenu = [
                   { code: 1, item: "Pasta Pomodoro", price: 129},
                   { code: 2, item: "Honey Mustard Chicken", price: 129},
                   { code: 3, item: "Cheesy Chicken", price: 129},
                   { code: 4, item: "Sloppy Joes", price: 129},
                   { code: 5, item: "German Franks Cheesy Franks", price: 99},
                   { code: 6, item: "Lechon Kawali", price: 99},
                   { code: 7, item: "Popcorn Chicken", price: 85},
                   { code: 8, item: "Turon a la Mode", price: 65},
                   { code: 9, item: "Bacon ice cream [Single Scoop]", price: 55},
                   { code: 10, item: "Bacon ice cream [Double Scoop]", price: 75},
                   { code: 11, item: "Ice Cream Cookie Cups", price: 65},
                   { code: 12, item: "Cheesecake Springrolls", price: 90},
                   ]

puts "WELCOME TO BINGE BEETLE"
      for x in 1..$bingebeetleMenu.length
        puts "#{x}. #{$bingebeetleMenu[x-1][:item]} - #{$bingebeetleMenu[x-1][:price]}"
      end
end
#
#
def linedesign
  puts '==== ' * 8
end
#
#
def have_account
  puts "Do you already have a FoodHub Account? [y/n]"
  have = gets.chomp.downcase
end
#
#subtotals for each food truck
$munchiezsubtotal = 0
$pendongsubtotal = 0
$yamashitasubtotal = 0
$roadgrillesubtotal = 0
$livelongsubtotal = 0
$cheatdaysubtotal = 0
$bingebeetlesubtotal = 0
#qtytotals for each food truck
$munchiezqtytotal = 0
$pendongqtytotal = 0
$yamashitaqtytotal = 0
$roadgrilleqtytotal = 0
$livelongqtytotal = 0
$cheatdayqtytotal = 0
$bingebeetleqtytotal = 0
#
#

def actualprogram
$wantmore = "y"
  while $wantmore == 'y' do
    puts "Which food truck do you want to check out?"
    showTrucks
    foodtruckchoice = gets.chomp.to_i
    case $foodtruckchoice
    when 1
      mwantmore = "y"
        while mwantmore == 'y'
          showMunchiezMenu
          $munchiezorder = gets.chomp.to_i

          $munchiezMenu.each do |munchiezchoice|
            if $munchiezorder == munchiezchoice[:code]
              puts "\nOkay, you chose #{munchiezchoice[:item]}. \n\nAnd how many of those?\n"
              $munchiezqty= gets.chomp
        end
      end

        $munchiezMenu.each do |munchiezqtychoice|
              if $munchiezorder == munchiezqtychoice[:code]
              puts "\nThat's #{munchiezqtychoice[:price]} each."
              $munchiezsubtotal += munchiezqtychoice[:price] * $munchiezqty.to_i
              $munchiezqtytotal += $munchiezqty.to_i
              puts "So that's a subtotal of #{$munchiezsubtotal} from Munchiez."
              end
                           end

    print "\nDo you want anything else from Munchiez? y/n\n"
    mwantmore = gets.chomp
    mwantmore.downcase

    end
end
#end of munchiez

#start of pendong
if foodtruckchoice == 2
pwantmore = "y"
    while pwantmore == 'y'

    showPendongMenu

    $pendongorder = gets.chomp.to_i

            $pendongMenu.each do |pendongchoice|
                  if $pendongorder == pendongchoice[:code]
                  puts "\nOkay, you chose #{pendongchoice[:item]}. \n\nAnd how many of those?\n"
                  end
                              end

    $pendongqty= gets.chomp

              $pendongMenu.each do |pendongqtychoice|
                  if $pendongorder == pendongqtychoice[:code]
                  puts "\nThat's #{pendongqtychoice[:price]} each."
                  $pendongsubtotal += pendongqtychoice[:price] * $pendongqty.to_i
                  $pendongqtytotal += $pendongqty.to_i
                  puts "So that's a subtotal of #{$pendongsubtotal} from Pendong Food Bug."
                  end
                                end

    print "\nDo you want anything else from Pendong Food Bug? y/n\n"
    pwantmore = gets.chomp
    pwantmore.downcase

    end
end
#end of Pendong

#start of yamashita
if foodtruckchoice == 3
ywantmore = "y"
    while ywantmore == 'y'

    showYamashitaMenu

    $yamashitaorder = gets.chomp.to_i

            $yamashitaMenu.each do |yamashitachoice|
                  if $yamashitaorder == yamashitachoice[:code]
                  puts "\nOkay, you chose #{yamashitachoice[:item]}. \n\nAnd how many of those?\n"
                  end
                                  end

    $yamashitaqty= gets.chomp

              $yamashitaMenu.each do |yamashitaqtychoice|
                  if $yamashitaorder == yamashitaqtychoice[:code]
                  puts "\nThat's #{yamashitaqtychoice[:price]} each."
                  $yamashitasubtotal += yamashitaqtychoice[:price] * $yamashitaqty.to_i
                  $yamashitaqtytotal += $yamashitaqty.to_i
                  puts "So that's a subtotal of #{$yamashitasubtotal} from Yamashita."
                  end
                                  end

    print "\nDo you want anything else from Yamashita? y/n\n"
    ywantmore = gets.chomp
    ywantmore.downcase

    end
end
# end of yamashita

#start of roadgrille
if foodtruckchoice == 4
rgwantmore = "y"
    while rgwantmore == 'y'

    showRoadGrilleMenu

    $roadgrilleorder = gets.chomp.to_i

            $roadgrilleMenu.each do |roadgrillechoice|
                  if $roadgrilleorder == roadgrillechoice[:code]
                  puts "\nOkay, you chose #{roadgrillechoice[:item]}. \n\nAnd how many of those?\n"
                  end
                                  end

    $roadgrilleqty= gets.chomp

              $roadgrilleMenu.each do |roadgrilleqtychoice|
                  if $roadgrilleorder == roadgrilleqtychoice[:code]
                  puts "\nThat's #{roadgrilleqtychoice[:price]} each."
                  $roadgrillesubtotal += roadgrilleqtychoice[:price] * $roadgrilleqty.to_i
                  $roadgrilleqtytotal += $roadgrilleqty.to_i
                  puts "So that's a subtotal of #{$roadgrillesubtotal} from Road Grille."
                  end
                                    end

    print "\nDo you want anything else from Road Grille? y/n\n"
    rgwantmore = gets.chomp
    rgwantmore.downcase

    end
end
#end of road grille

#start of live long
if foodtruckchoice == 5
llwantmore = "y"
    while llwantmore == 'y'

    showLiveLongMenu

    $livelongorder = gets.chomp.to_i

            $livelongMenu.each do |livelongchoice|
                  if $livelongorder == livelongchoice[:code]
                  puts "\nOkay, you chose #{livelongchoice[:item]}. \n\nAnd how many of those?\n"
                  end
                               end

    $livelongqty= gets.chomp

              $livelongMenu.each do |livelongqtychoice|
                  if $livelongorder == livelongqtychoice[:code]
                  puts "\nThat's #{livelongqtychoice[:price]} each."
                  $livelongsubtotal += livelongqtychoice[:price] * $livelongqty.to_i
                  $livelongqtytotal += $livelongqty.to_i
                  puts "So that's a subtotal of #{$livelongsubtotal} from Live Long."
                  end
                                 end

    print "\nDo you want anything else from Live Long? y/n\n"
    llwantmore = gets.chomp
    llwantmore.downcase

    end
end
# end of live long

#start of cheat day
if foodtruckchoice == 6

cdwantmore = "y"
    while cdwantmore == 'y'

    showCheatDayMenu

    $cheatdayorder = gets.chomp.to_i

            $cheatdayMenu.each do |cheatdaychoice|
                  if $cheatdayorder == cheatdaychoice[:code]
                  puts "\nOkay, you chose #{cheatdaychoice[:item]}. \n\nAnd how many of those?\n"
                  end
                                end

    $cheatdayqty= gets.chomp

              $cheatdayMenu.each do |cheatdayqtychoice|
                  if $cheatdayorder == cheatdayqtychoice[:code]
                  puts "\nThat's #{cheatdayqtychoice[:price]} each."
                  $cheatdaysubtotal += cheatdayqtychoice[:price] * $cheatdayqty.to_i
                  $cheatdayqtytotal += $cheatdayqty.to_i
                  puts "So that's a subtotal of #{$cheatdaysubtotal} from Cheat Day."
                  end
                                  end

    print "\nDo you want anything else from Cheat Day? y/n\n"
    cdwantmore = gets.chomp
    cdwantmore.downcase

    end
end
# end of cheat day

#start of binge beetle
if foodtruckchoice == 7
bbwantmore = "y"
      while bbwantmore == 'y'

      showBingeBeetleMenu

      $bingebeetleorder = gets.chomp.to_i

              $bingebeetleMenu.each do |bingebeetlechoice|
                    if $bingebeetleorder == bingebeetlechoice[:code]
                    puts "\nOkay, you chose #{bingebeetlechoice[:item]}. \n\nAnd how many of those?\n"
                    end
                                    end

      $bingebeetleqty= gets.chomp

                $bingebeetleMenu.each do |bingebeetleqtychoice|
                    if $bingebeetleorder == bingebeetleqtychoice[:code]
                    puts "\nThat's #{bingebeetleqtychoice[:price]} each."
                    $bingebeetlesubtotal += bingebeetleqtychoice[:price] * $bingebeetleqty.to_i
                    $bingebeetleqtytotal += $bingebeetleqty.to_i
                    puts "So that's a subtotal of #{$bingebeetlesubtotal} from Binge Beetle."
                    end
                                      end

      print "\nDo you want anything else from Binge Beetle? y/n\n"
      bbwantmore = gets.chomp
      bbwantmore.downcase

      end
end
# end of cheat day

#exit the menus
if foodtruckchoice == 8

$totaltotal = $munchiezsubtotal + $pendongsubtotal + $yamashitasubtotal + $roadgrillesubtotal + $livelongsubtotal + $cheatdaysubtotal + $bingebeetlesubtotal
$qtytotal = $munchiezqtytotal + $pendongqtytotal + $yamashitaqtytotal + $roadgrilleqtytotal + $livelongqtytotal + $cheatdayqtytotal + $bingebeetleqtytotal

    puts "Okay, #{name.capitalize}, did you have fun choosing your food? You have a #{$qtytotal} items in your tray, and you grand total is #{$totaltotal}.\nThis amount will be taken from your account. Enjoy your meal!"
    $wantmore = 'n'
    exit
end
end
#end of the 8 choices
end
end
# end ng def
#
#



if have_account == 'n'
  create_account
  showTrucks
  actualprogram
else
  showTrucks
  actualprogram
end
