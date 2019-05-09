class Artist
  attr_accessor :name
  attr_reader :years_experience
  @@all_artist = []
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all_artist << self
  end

  def self.all
    @@all_artist
  end

  def paintings
    Painting.all.select {|artist_paint| artist_paint.artist == self}
  end

  def galleries
    paintings.map {|artist_gall| artist_gall.gallery }
  end

  def create_painting(gallery, title, price)
    Painting.new(self, gallery, title, price)
  end

  def cities
    paintings.map {|painting| painting.gallery.city }
  end

  def self.total_experience
    @@all_artist.collect {|x| x.years_experience}.reduce(0, :+)
  end

  def self.most_prolific
    paintings.select {|n_paintings| n_paintings.years_experience}
    # @@all_artist.find {|most_paintings| most_paintings.years_experience}.max
  end
end
