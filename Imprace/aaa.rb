require 'CSV'
class String
  def capitalize_each
    self.split(" ").each{|word| word.capitalize!}.join(" ")
  end
  def capitalize_each!
    replace capitalize_each
  end
end
def create_account
  puts "Enter the following please: "
  print "Full Name: "
  $name = gets.chomp.capitalize_each
  print "Contact number: "
  $contact_number = gets.chomp.to_i
  print "Email: "
  $email = gets.chomp.downcase
  print "Load: "
  $money = gets.chomp.to_f
  puts "WELCOME, #{$name}! Now you can buy using your FoodHub card! Thank you!"
  $mon = $money
end
def have_account
  puts "Do you already have a FoodHub Account? [y/n]"
  have = gets.chomp.downcase
end

class Accounts
attr_accessor :namae, :nomba, :mail, :okane
  def initialize(hash)
  @namae = hash[:namae]
  @nomba = hash[:nomba].to_i
  @mail = hash[:mail]
  @okane = hash[:okane].to_i
  end
def self.from_csv_row(row)
  self.new({
    namae: row['namae'],
    nomba: row['nomba'],
    mail: row['mail'],
    okane: row['okane'],
    })
  end

  HEADERS = ['Name', 'Number', 'Email', "Load"]
  # Convert to CSV::Row
  def to_csv_row
    CSV::Row.new(HEADERS, [namae, nomba, mail, okane])
  end
end

person = Accounts.new({
  namae: $name,
  nomba: $contact_number,
  mail: $email,
  okane: $money,
  })

#Append person to the CSV file
CSV.open('accounts.csv', 'a+') do |csv|
  csv << person.to_csv_row
end

people = []
#Loop over each row in the CSV
CSV.foreach('accounts.csv', headers: true) do |row|
  #convert from CSV::Row to person instance
  person = Accounts.from_csv_row(row)
  #Add objects to array
  people << person
  #Display fist and last name
  puts "#{person.namae} #{person.okane}"
end

if have_account == 'n'
  create_account
end
