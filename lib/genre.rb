class Genre 
  attr_accessor :name 
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def songs
    Song.all
    #iterates through songs that belong to that genre 
  end
  def artists
    songs.map {|song| song.artist}
  
  # iterates over Genre's collection of songs and collects the artist that owns each song
  end 
end 