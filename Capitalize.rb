class String
  def capitalize_each
    self.split(" ").each{|word| word.capitalize!}.join(" ")
  end
  def capitalize_each!
    replace capitalize_each
  end
end

puts "hello WORLD!".capitalize_each #=> "Hello World!"
puts "hellow world".capitalize_each
