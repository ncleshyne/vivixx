puts "Give your file a name (without .txt extension!)"
filename = gets.chomp

# creates the new file and adds the .txt file type extension
opened_file = File.new(filename + '.txt', 'w+')
puts "write in a sentence to save to your file '#{filename}'"
sentence = gets

# Write sentence string to the file
opened_file.write(sentence)

# Rewind pointer at beginning of file
opened_file.rewind

# Read entire file from beginning to end
puts "=" * 15
print opened_file.read
# We are done with the file
opened_file.close
