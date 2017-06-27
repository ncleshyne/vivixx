class Customer
  attr_accessor :name, :email, :account, :address, :contact

  def initialize(name, email, account, address, contact)
    @name = name.to_s
    @email = email.to_s
    @account = account.to_i
    @address = address.to_s
    @contact = contact.to_i
  end

  def details
    puts "Hello #{@name}! Your personal details are as follows: "
    puts " "
    puts "Email: #{@email}"
    puts "Account number: #{@account}"
    puts "Address: #{@address}"
    puts "Contact number: #{@contact}"
  end
end

def input
  puts "Please enter your name: "
  n = gets.chomp.capitalize
  puts "Please enter your email: "
  e = gets.chomp.downcase
  puts "Please enter your account number: "
  a = gets.chomp.to_i
  puts "Please enter your address: "
  ad = gets.chomp.capitalize
  puts "Please enter your contact number: "
  c = gets.chomp.to_i
end
input
person = Customer.new(n, e, a, ad, c)
person.details
puts "=" * 15
