#Ask for the filename
puts "Type in the file name: "
filename = gets.chomp

#Open file and save it to opened_file variable
opened_file = File.open(filename, 'a+')

#Print to the terminal screen
puts "Opened file name #{filename}"
puts "=" *15
print opened_file.read

#Ask for a new city name
puts "Add another Philippine city: "
city = gets.chomp

#Write city name to the file
opened_file.write(city)
opened_file.write("\n")

#rewind pointer at beginning of file
opened_file.rewind
puts "=" * 15

#Read entire file from beginning to end
print opened_file.read

#we are done with the file
opened_file.close
