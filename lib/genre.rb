class Genre
  attr_reader :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all
    @@all
  end 
  
  def songs 
    Songs.all.select {|song| song.genre == self}
  end 
  
  def artists
    
  end 
end 