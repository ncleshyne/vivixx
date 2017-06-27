banner = File.read("C:/apps/banner.txt").center(100, ' ')
puts banner
@mk = 0
@rg = 0
@kn = 0
@tv = 0
@total = 0
candidates = [
  {name: "1 Mika", price: '0', propaganda: 'Free Wi-Fi'},
  {name: "2 Reggie", price: '0', propaganda: 'Death Penalty'},
  {name: "3 Kenneth", price: '0', propaganda: 'Cleaner Philippines'},
  {name: "4 Trevor", price: '0', propaganda: 'Healthier Philippines'}
]

newarei = [
  {name: "Mika", votes: 0},
  {name: "Reggie", votes: 0},
  {name: "Kenneth", votes: 0},
  {name: "Trevor", votes: 0}
  ]

while @total <= 20
  system 'cls'
      def getName
        puts " "
        puts "Hello! What's your name?"
        @voter = gets.chomp.downcase
      end
      def getVote
        puts "Candidates:".center(50, ' ')
        candidates.each do |info|
        puts "Name: #{info[:name]}, Propaganda: #{info[:propaganda]}".center(50, ' ')
        puts " "
        end   #end of intro
        #while total <= 20
        #total +=1
        puts "Vote wisely, #{@voter}! The future of the country is within your hands.
              Now, please enter the name of your chosen candidate: "
        @v = gets.chomp.downcase
    case @v
    when "mika"
      @mk +=1
    when "reggie"
      @rg +=1
    when "kenneth"
      @kn +=1
    when "trevor"
      @tv +=1
      def ttotal
        puts "Total Votes:".center(50, ' ')
        puts "Mika = #{@mk}"
        puts " "
        puts "Reggie = #{@rg}"
        puts " "
        puts "Kenneth = #{@kn}"
        puts " "
        puts "Trevor = #{@tv}"
      end
    end
  end
end
