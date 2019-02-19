class Artist 
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end 
  
  def self.all 
    @@all 
  end 
  
  
  def new_song(name, genre) 
    song = Song.new(name, self, genre)
    @songs << song
    song
  end 
  
  def songs 
    @songs
  end 
  
  def genres 
    Genre.all.select 
  end 
end 