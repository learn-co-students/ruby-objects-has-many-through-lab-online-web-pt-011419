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
  
  # creates a new song that belongs to the genre
  def new_song(name, genre)
    Song.new(name, artist, self)
  end
  
  def songs
    Song.all.select do |song| 
      song.genre == self
    end
  end
  
  def artists 
    songs.map do |song| 
      song.artist
    end
  end
end