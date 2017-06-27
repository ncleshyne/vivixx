def menu
  puts "\n=== Menu options ==="
  puts "1. Exit program"
  puts "2. Print Japanese haiku\n"
end

loop do
  menu
  command = gets.chomp

  #if/else statement
  if command == "1"
    puts "\nGood bye\n"
    break
  elsif command == "2"
    puts "~"*15
    puts "Furu ike ya"
    puts "kawazu tobikomu"
    puts "mizu no oto\n"
  else
    puts "wrong command!!"
  end
end
