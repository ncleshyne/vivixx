class InvalidNameError < StandardError
end

def validate_name(name)
  name = name.strip #Trim whitespace
  raise InvalidNameError, "Name '#{name}' must not be empty" if name.empty?
  name
end

begin
  validate_name('Alice') #Fine
  validate_name(' ') #Error!
rescue InvalidNameError => e
  puts e.message # => Name ' ' must not be empty
end

def ask_for_name
  #1. Ask for user input
  puts 'Please enter your name: '
  print '> '
  name = gets.chomp
  #2 Validate and return name
  validate_name(name)
rescue InvalidNameError => e
  puts 'Invalid name. Please try again.'
  retry #Go back to 1.
end

username = ask_for_name
