class Cat
  attr_reader :name, :color
  def initialize(name, color)
    @name = name
    @color = color
  end
end

cats = [
  Cat.new('Purry', :black),
  Cat.new('Scratchy', :white),
  Cat.new('Feral', :fawn),
  Cat.new('Tiny', :fawn),
  Cat.new('Leo', :white)
]

cats = [
  Cat.new('Purry', :black),
  Cat.new('Scratchy', :white),
  Cat.new('Feral', :fawn),
  Cat.new('Tiny', :fawn),
  Cat.new('Leo', :white)
]
# Pick only :white cats
white_cats = cats.select do |cat|
cat.color == :white
end
# => [ Cat('Scratchy', :white), Cat('Leo', :white) ]

white_cats = cats.select {|cat| cat.color == :white}

cats = [ Cat.new('Purry', :black), Cat.new('Scratchy', :white), Cat.new('Feral', :fawn),
Cat.new('Tiny', :fawn), Cat.new('Leo', :white) ]

# Get corresponding color for each cat
all_cat_colors = cats.map { |cat| cat.color }
# => [ :black, :white, :fawn, :fawn, :white ]
puts all_cat_colors
# Filter out multiples by uniquing the colors
unique_cat_colors = all_cat_colors.uniq
# => [ :black, :white, :fawn]

# Can be written in one line
unique_cat_colors = cats.map{ |cat| cat.color }.uniq
# => [ :black, :white, :fawn]

# Get corresponding name for each cat
cat_names = cats.map { |cat| cat.name }
# => [ 'Purry', 'Scratchy', 'Feral', 'Tiny', 'Leo' ]
# Uppercase each cat name
uppercased_cat_names = cat_names.map { |name| name.upcase }
# => [ 'PURRY', 'SCRATCHY', 'FERAL', 'TINY', 'LEO' ]

# Can be shortened to one .map
uppercased_cat_names = cats.map { |cat| cat.name.upcase }
