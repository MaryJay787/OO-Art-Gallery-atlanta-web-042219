class Gallery
  attr_accessor :name, :city
  # attr_reader :name
  @@all_gallaries = []
  def initialize(name, city)
    @name = name
    @city = city
    @@all_gallaries << self
  end

  def self.all
    @@all_gallaries
  end

  def paintings
    Painting.all.select {|x| x.gallery == self }
  end

  def artists
    paintings.map {|x| x.artist }
  end

  def artist_names
    paintings.map {|gall| gall.artist.name }
  end

  def most_expensive_painting
    paintings.select {|r| r.price}.max
  end
end
