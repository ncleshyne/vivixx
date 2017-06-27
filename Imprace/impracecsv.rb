#munchiezcsv
require 'CSV'

class Menu
attr_accessor :code, :item, :price

def initialize(hash)
  @code = hash[:code]
  @item = hash[:item]
  @price = hash[:price]
end

def self.from_csv_row(row)
  self.new({
    code: row['code'].to_i,
    item: row['item'],
    price: row['price'].to_i
    })
end
end

HEADERS = ['code', 'item', 'price']

def to_csv_row
  CSV::Row.new(HEADERS, [code, item, price])
end
#
def linedesign
  puts '= = = = ' * 15
end
def linedesign2
  puts "~ ~ ~ ~ " * 15
end
$linewidth = 120
#
def banner
  linedesign
  puts %q{
                __          __         _                                         _
                \ \        / /        | |                                       | |
                 \ \  /\  / /    ___  | |   ___    ___    _ __ ___     ___      | |_    ___
                  \ \/  \/ /    / _ \ | |  / __|  / _ \  | '_ ` _ \   / _ \     | __|  / _ \
                   \  /\  /    |  __/ | | | (__  | (_) | | | | | | | |  __/     | |_  | (_) |
                    \/  \/      \___| |_|  \___|  \___/  |_| |_| |_|  \___|      \__|  \___/

  _____           _   _             _    _                       ______                      _      _    _           _
 / ____|         | | | |           | |  | |                     |  ____|                    | |    | |  | |         | |
| |        __ _  | | | |   ___     | |  | |  _ __     ___       | |__     ___     ___     __| |    | |__| |  _   _  | |__
| |       / _` | | | | |  / _ \    | |  | | | '_ \   / _ \      |  __|   / _ \   / _ \   / _` |    |  __  | | | | | | '_ \
| |____  | (_| | | | | | |  __/    | |__| | | | | | | (_) |     | |     | (_) | | (_) | | (_| |    | |  | | | |_| | | |_) |
 \_____|  \__,_| |_| |_|  \___|     \____/  |_| |_|  \___/      |_|      \___/   \___/   \__,_|    |_|  |_|  \__,_| |_.__/

  }
linedesign
end
#
class String
  def capitalize_each
    self.split(" ").each{|word| word.capitalize!}.join(" ")
  end
  def capitalize_each!
    replace capitalize_each
  end
end
#
#
class Person
  attr_accessor :namae, :nomba, :mail, :okane

  def initialize(hash)
    @namae = hash[:namae]
    @nomba = hash[:nomba]
    @mail = hash[:mail]
    @okane = hash[:okane].to_i
  end

  #initialize from CSV::row

  def self.from_csv_row(row)
    self.new({
      namae: row['namae'],
      nomba: row['nomba'],
      mail: row['mail'],
      okane: row['okane'],
      })
  end

  HEADERS = ['Name', 'Number', 'Email', "Load"]

  def to_csv_row
    CSV::Row.new(HEADERS, [namae, nomba, mail, okane])
  end

end
def create_account
  puts "Please enter the following: "
  print "Full Name: "
  $name = gets.chomp.capitalize_each
  print "Contact number: "
  contact_number = gets.chomp.to_i
  print "Email: "
  email = gets.chomp.downcase
  print "Load: "
  money = gets.chomp.to_f
  puts "Welcome, #{$name}! Now you can buy using your Food Hub Card! Thank you!"
  $mon = money
  person = Person.new({
    namae: $name,
    nomba: $contact_number,
    mail: $email,
    okane: $money
    })

  #append person to csv file
  CSV.open('people.csv', 'a+') do |csv|
    csv << person.to_csv_row
  end
end
def already_have
  csv_text = File.read('people.csv')
  csv = CSV.parse(csv_text, :headers => true)
  csv.each do |row|
  puts csv.find {|row| row['Name'] == $name}
  CSV.foreach('people.csv', headers: true) do |row|
    showmetheaccount = Person.from_csv_row(row)
    puts "Welcome back #{showmetheaccount.namae}! Your remaining balance is P#{showmetheaccount.okane}"
  end
  puts "\n"
  linedesign
end

def showTrucks
  $foodtruckList = [  {code: 1, foodtruck: "Munchiez"},
                      {code: 2, foodtruck: "Pendong Food Bug"},
                      {code: 3, foodtruck: "Yamashita"},
                      {code: 4, foodtruck: "Road Grille"},
                      {code: 5, foodtruck: "Livelong"},
                      {code: 6, foodtruck: "Cheat Day"},
                      {code: 7, foodtruck: "Binge Beetle"},
                      {code: 8, foodtruck: "Exit - we're good to go!"}
                  ]
puts "Please choose a food truck:"
puts "\n"

  for x in 1..$foodtruckList.length
    puts "#{x}. #{$foodtruckList[x-1][:foodtruck]}"
  end
puts "\n"
end
#
def showMunchiezMenu
    puts "\n"
    puts " | MUNCHIEZ MENU | ".center($linewidth, '* . * . ')
    puts "\n"
  CSV.foreach('munchiezmenu.csv', headers: true) do |row|
    showmethefood = Menu.from_csv_row(row)
    puts "#{showmethefood.code}. #{showmethefood.item} - #{showmethefood.price}"
  end
  puts "\n"
  linedesign
end
#
def showPendongMenu
  puts "\n"
  puts " | PENDONG MENU | ".center($linewidth, '* . * . ')
  puts "\n"
  CSV.foreach('pendongmenu.csv', headers: true) do |row|
    showmethefood = Menu.from_csv_row(row)
    puts "#{showmethefood.code}. #{showmethefood.item} - #{showmethefood.price}"
  end
  puts "\n"
  linedesign
end
#
def showYamashitaMenu
  puts "\n"
  puts " | YAMASHITA MENU | ".center($linewidth, '* . * . ')
  puts "\n"
  CSV.foreach('yamashitamenu.csv', headers: true) do |row|
    showmethefood = Menu.from_csv_row(row)
    puts "#{showmethefood.code}. #{showmethefood.item} - #{showmethefood.price}"
  end
  puts "\n"
  linedesign
end
#
def showRoadGrilleMenu
  puts "\n"
  puts " | ROAD GRILLE MENU | ".center($linewidth, '* . * . ')
  puts "\n"
  CSV.foreach('roadgrillemenu.csv', headers: true) do |row|
    showmethefood = Menu.from_csv_row(row)
    puts "#{showmethefood.code}. #{showmethefood.item} - #{showmethefood.price}"
  end
  puts "\n"
  linedesign
end
#
def showLiveLongMenu
  puts "\n"
  puts " | LIVE LONG MENU | ".center($linewidth, '* . * . ')
  puts "\n"
  CSV.foreach('livelongmenu.csv', headers: true) do |row|
    showmethefood = Menu.from_csv_row(row)
    puts "#{showmethefood.code}. #{showmethefood.item} - #{showmethefood.price}"
  end
  puts "\n"
  linedesign
end
#
def showCheatDayMenu
  puts "\n"
  puts " | CHEAT DAY MENU | ".center($linewidth, '* . * . ')
  puts "\n"
  CSV.foreach('cheatdaymenu.csv', headers: true) do |row|
    showmethefood = Menu.from_csv_row(row)
    puts "#{showmethefood.code}. #{showmethefood.item} - #{showmethefood.price}"
  end
  puts "\n"
  linedesign
end
#
def showBingeBeetleMenu
  puts "\n"
  puts " | BINGE BEETLE | ".center($linewidth, '* . * . ')
  puts "\n"
  CSV.foreach('bingebeetlemenu.csv', headers: true) do |row|
    showmethefood = Menu.from_csv_row(row)
    puts "#{showmethefood.code}. #{showmethefood.item} - #{showmethefood.price}"
  end
  puts "\n"
  linedesign
end
#
def have_account
  puts "Do you already have a FoodHub Account? y/n\n"
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
def actualprogram

$wantmore = "y"

while $wantmore == 'y' do
puts "\n\n"
puts "Which food truck do you want to check out?"

showTrucks
puts "\n"
foodtruckchoice = gets.chomp.to_i
puts "\n"
linedesign
#start of munchiez
if foodtruckchoice == 1
mwantmore = "y"
    while mwantmore == 'y'
    puts "\n"
    linedesign2
    puts "\n"
    showMunchiezMenu
    puts "\n"
    $munchiezorder = gets.chomp.to_i

    CSV.foreach('munchiezmenu.csv', headers: true) do |row|
      showmethefood = Menu.from_csv_row(row)
        if $munchiezorder == showmethefood.code
        puts "\nOkay, you chose #{showmethefood.item}. That's #{showmethefood.price} each."
        puts "How many of that do you want?"
        puts "\n"
    end
    end

    $munchiezqty= gets.chomp

    CSV.foreach('munchiezmenu.csv', headers: true) do |row|
      showmethefood = Menu.from_csv_row(row)
        if $munchiezorder == showmethefood.code
           $munchiezsubtotal += showmethefood.price * $munchiezqty.to_i
           $munchiezqtytotal += $munchiezqty.to_i
           puts "\nSo that's a subtotal of #{$munchiezsubtotal} from Munchiez."
        end
        end

    print "\nDo you want anything else from Munchiez? y/n   "
    mwantmore = gets.chomp
    mwantmore.downcase

    end
    linedesign
end
#end of munchiez
#start of pendong
if foodtruckchoice == 2
pwantmore = "y"
    while pwantmore == 'y'
    puts "\n"
    linedesign2
    puts "\n"
    showPendongMenu
    puts "\n"
    $pendongorder = gets.chomp.to_i

    CSV.foreach('pendongmenu.csv', headers: true) do |row|
      showmethefood = Menu.from_csv_row(row)
        if $pendongorder == showmethefood.code
        puts "\nOkay, you chose #{showmethefood.item}. That's #{showmethefood.price} each."
        puts "How many of that do you want?"
        puts "\n"
    end
    end

    $pendongqty= gets.chomp

    CSV.foreach('pendongmenu.csv', headers: true) do |row|
      showmethefood = Menu.from_csv_row(row)
        if $pendongorder == showmethefood.code
           $pendongsubtotal += showmethefood.price * $pendongqty.to_i
           $pendongqtytotal += $pendongqty.to_i
           puts "\nSo that's a subtotal of #{$pendongsubtotal} from Pendong Food Bug."
        end
        end

    print "\nDo you want anything else from Pendong Food Bug? y/n   "
    pwantmore = gets.chomp
    pwantmore.downcase

    end
    linedesign
end
#end of pendong
#start of yamashita
if foodtruckchoice == 3
ywantmore = "y"
    while ywantmore == 'y'
    puts "\n"
    linedesign2
    puts "\n"
    showYamashitaMenu
    puts "\n"
    $yamashitaorder = gets.chomp.to_i

    CSV.foreach('yamashitamenu.csv', headers: true) do |row|
      showmethefood = Menu.from_csv_row(row)
        if $yamashitaorder == showmethefood.code
        puts "\nOkay, you chose #{showmethefood.item}. That's #{showmethefood.price} each."
        puts "How many of that do you want?"
        puts "\n"
    end
    end

    $yamashitaqty= gets.chomp

    CSV.foreach('yamashitamenu.csv', headers: true) do |row|
      showmethefood = Menu.from_csv_row(row)
        if $yamashitaorder == showmethefood.code
           $yamashitasubtotal += showmethefood.price * $yamashitaqty.to_i
           $yamashitaqtytotal += $yamashitaqty.to_i
           puts "\nSo that's a subtotal of #{$yamashitasubtotal} from Yamashita."
        end
        end

    print "\nDo you want anything else from Yamashita? y/n    "
    ywantmore = gets.chomp
    ywantmore.downcase

    end
    linedesign
end
#end of yamashita
#start of roadgrille
if foodtruckchoice == 4
rgwantmore = "y"
    while rgwantmore == 'y'
    puts "\n"
    linedesign2
    puts "\n"
    showRoadGrilleMenu
    puts "\n"
    $roadgrilleorder = gets.chomp.to_i

    CSV.foreach('roadgrillemenu.csv', headers: true) do |row|
      showmethefood = Menu.from_csv_row(row)
        if $roadgrilleorder == showmethefood.code
        puts "\nOkay, you chose #{showmethefood.item}. That's #{showmethefood.price} each."
        puts "How many of that do you want?"
        puts "\n"
    end
    end

    $roadgrilleqty= gets.chomp

    CSV.foreach('roadgrillemenu.csv', headers: true) do |row|
      showmethefood = Menu.from_csv_row(row)
        if $roadgrilleorder == showmethefood.code
           $roadgrillesubtotal += showmethefood.price * $roadgrilleqty.to_i
           $roadgrilleqtytotal += $roadgrilleqty.to_i
           puts "\nSo that's a subtotal of #{$roadgrillesubtotal} from Road Grille."
        end
        end

    print "\nDo you want anything else from Road Grille? y/n    "
    rgwantmore = gets.chomp
    rgwantmore.downcase

    end
    linedesign
end
#end of roadgrille
#start of livelong
if foodtruckchoice == 5
llwantmore = "y"
    while llwantmore == 'y'
    puts "\n"
    linedesign2
    puts "\n"
    showLiveLongMenu
    puts "\n"
    $livelongorder = gets.chomp.to_i

    CSV.foreach('livelongmenu.csv', headers: true) do |row|
      showmethefood = Menu.from_csv_row(row)
        if $livelongorder == showmethefood.code
        puts "\nOkay, you chose #{showmethefood.item}. That's #{showmethefood.price} each."
        puts "How many of that do you want?"
        puts "\n"
    end
    end

    $livelongqty= gets.chomp

    CSV.foreach('livelongmenu.csv', headers: true) do |row|
      showmethefood = Menu.from_csv_row(row)
        if $livelongorder == showmethefood.code
           $livelongsubtotal += showmethefood.price * $livelongqty.to_i
           $livelongqtytotal += $livelongqty.to_i
           puts "\nSo that's a subtotal of #{$livelongsubtotal} from Live Long."
        end
        end

    print "\nDo you want anything else from Live Long? y/n    "
    llwantmore = gets.chomp
    llwantmore.downcase

    end
    linedesign
end
#end of livelong
#start of cheat day
if foodtruckchoice == 6
cdwantmore = "y"
    while cdwantmore == 'y'
    puts "\n"
    linedesign2
    puts "\n"
    showCheatDayMenu
    puts "\n"

    $cheatdayorder = gets.chomp.to_i

    CSV.foreach('cheatdaymenu.csv', headers: true) do |row|
      showmethefood = Menu.from_csv_row(row)
        if $cheatdayorder == showmethefood.code
        puts "Okay, you chose #{showmethefood.item}. That's #{showmethefood.price} each."
        puts "How many of that do you want?"
        puts "\n"
    end
    end

    $cheatdayqty= gets.chomp

    CSV.foreach('cheatdaymenu.csv', headers: true) do |row|
      showmethefood = Menu.from_csv_row(row)
        if $cheatdayorder == showmethefood.code
           $cheatdaysubtotal += showmethefood.price * $cheatdayqty.to_i
           $cheatdayqtytotal += $cheatdayqty.to_i
           puts "\nSo that's a subtotal of #{$cheatdaysubtotal} from Cheat Day."
        end
        end

    print "\nDo you want anything else from Cheat Day? y/n    "
    cdwantmore = gets.chomp
    cdwantmore.downcase

    end
    linedesign
end
#end of cheat day
#start of binge beetle
if foodtruckchoice == 7

bbwantmore = "y"
    while bbwantmore == 'y'
    puts "\n"
    linedesign2
    puts "\n"
    showBingeBeetleMenu
    puts "\n"
    $bingebeetleorder = gets.chomp.to_i

    CSV.foreach('bingebeetlemenu.csv', headers: true) do |row|
      showmethefood = Menu.from_csv_row(row)
        if $bingebeetleorder == showmethefood.code
        puts "Okay, you chose #{showmethefood.item}. That's #{showmethefood.price} each."
        puts "How many of that do you want?"
        puts "\n"
    end
    end

    $bingebeetleqty= gets.chomp

    CSV.foreach('bingebeetlemenu.csv', headers: true) do |row|
      showmethefood = Menu.from_csv_row(row)
        if $bingebeetleorder == showmethefood.code
           $bingebeetlesubtotal += showmethefood.price * $bingebeetleqty.to_i
           $bingebeetleqtytotal += $bingebeetleqty.to_i
           puts "\nSo that's a subtotal of #{$bingebeetlesubtotal} from Binge Beetle."
        end
        end

    print "\nDo you want anything else from Binge Beetle? y/n"
    bbwantmore = gets.chomp
    bbwantmore.downcase

    end
    linedesign
end
#end of binge beetle
#exit the menus
if foodtruckchoice == 8

$totaltotal = $munchiezsubtotal + $pendongsubtotal + $yamashitasubtotal + $roadgrillesubtotal + $livelongsubtotal + $munchiezsubtotal + $bingebeetlesubtotal
$qtytotal = $munchiezqtytotal + $pendongqtytotal + $yamashitaqtytotal + $roadgrilleqtytotal + $livelongqtytotal + $munchiezqtytotal + $bingebeetleqtytotal
$endmoney = $mon - $totaltotal
linedesign
    puts "\nOkay, #{$name}, did you have fun choosing your food?\nYou have a #{$qtytotal} items in your tray, and you grand total is #{$totaltotal}.\nThis amount will be taken from your account. \nYou now have #{$endmoney} in your account. Enjoy your meal!"
    $wantmore = 'n'
    exit
end
#end ng choice 8
end
#end ng while
end
# end ng def (actual program)

banner
def have_account
  puts "Do you already have a FoodHub Account? [y/n]"
  have = gets.chomp.downcase
end
if have_account == 'n'
  create_account
  actualprogram
else
  puts "What's your name? "
  aaa = gets.chomp.capitalize_each
  already_have
  actualprogram
end
end
