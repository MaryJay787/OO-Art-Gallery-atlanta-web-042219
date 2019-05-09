require_relative '../config/environment.rb'


same = Artist.new("Sam", 12)
lizzie = Artist.new("Lizzie", 6)
greg = Artist.new("Greg", 20)

dc = Gallery.new("DC", "Washinton")
la = Gallery.new("LA", "California")
mi = Gallery.new("MI", "Detroit")

pig = Painting.new(same,dc,"The Pig",150)
cow = Painting.new(lizzie,la,"The Cow",327)
goat = Painting.new(greg,mi,"The Goat",429)

binding.pry

puts "Bob Ross rules."
