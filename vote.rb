candidates = [
  {name: "1 Mika", price: '0', propaganda: 'Free Wi-Fi'},
  {name: "2 Reggie", price: '0', propaganda: 'Death Penalty'},
  {name: "3 Kenneth", price: '0', propaganda: 'Cleaner Philippines'},
  {name: "4 Trevor", price: '0', propaganda: 'Healthier Philippines'}
]
puts "Candidates:".center(50, ' ')
candidates.each do |info|
puts "Name: #{info[:name]}, Propaganda: #{info[:propaganda]}".center(50, ' ')
end   #end of intro
newarei = [
  {votes: 0, name: "Mika"},
  {votes: 0, name: "Reggie"},
  {votes: 0, name: "Kenneth"},
  {votes: 0, name: "Trevor"}
  ]

def countVote

total = 0
counter = 0
while total <= 5
  puts " "
  puts "Hello! What's your name?"
  voter = gets.chomp.downcase
  total +=1
  puts "Vote wisely, #{voter}! The future of the country is within your hands.
        Now, please enter the name of your chosen candidate: "
  chosen = gets.chomp.downcase
  newarei.each do |names|
    if chosen==names[:name]
      counter = chosen[:votes] +=1
      puts "Thank you!"
    end
end
puts "  = #{counter}"
end
