system 'cls'
require 'CSV'

class String
  def capitalize_each
    self.split(" ").each{|word| word.capitalize!}.join(" ")
  end
  def capitalize_each!
    replace capitalize_each
  end
end
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

# create new person
def create_account
  puts "Please enter the following: "
  print "Full Name: "
  $name = gets.chomp.capitalize_each
  print "Contact number: "
  $contact_number = gets.chomp
  print "Email: "
  $email = gets.chomp.downcase
  print "Load: "
  $money = gets.chomp.to_i
  puts "WELCOME, #{$name}! Now you can buy using your FoodHub card! Thank you!"
  $mon = $money
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
def have_account
  puts "Do you already have a FoodHub Account? [y/n]"
  have = gets.chomp.downcase
end

if have_account == 'n'
  create_account
else
  puts "What's your name?"
  $xname = gets.chomp.capitalize_each
  CSV.foreach('people.csv', headers: true) do |row|
      showmetheaccount = Person.from_csv_row(row)
    if $xname == showmetheaccount.namae
      puts "Welcome back, #{showmetheaccount.namae}. Your account has #{showmetheaccount.okane}."
    $money == showmetheaccount.balance
    end
  end
end
