class String
  def capitalize_each
    self.split(" ").each{|word| word.capitalize!}.join(" ")
  end
  def capitalize_each!
    replace capitalize_each
  end
end

puts "hello WORLD!".capitalize_each #=> "Hello World!"

s = "6825 W. GALVESTON ST."
puts s.capitalize #=> "6825 w. galveston st."
puts s.capitalize_each #=> "6825 W. Galveston St."
puts s #=> "6825 W. GALVESTON ST."

s.capitalize_each!
puts s #=> "6825 W. Galveston St."
puts Time.new.strftime("%m-%d-%y")
