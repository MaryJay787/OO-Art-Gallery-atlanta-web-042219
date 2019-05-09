class Painting
  attr_accessor :artist, :gallery
  attr_reader :title, :price

  @@all = []

  def initialize(artist, gallery, title, price)
    @artist = artist
    @gallery = gallery
    @title = title
    @price = price
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    @@all.collect {|p| p.price}.reduce(0, :+)
  end

end
