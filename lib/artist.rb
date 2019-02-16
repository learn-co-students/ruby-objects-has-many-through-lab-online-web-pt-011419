require 'pry'
class Artist 
   
  attr_accessor :name, :genre, :artist 
   @@all = []
  
  def initialize(name)
    @name= name 
    @@all<< self 

  end 
 
  
  def self.all
    @@all
    end 
  
  def new_song(song, genre)
    Song.new(name, self, genre)
     self.songs.last
  end 
  
  def songs
    Song.all.select do |element|
     element.artist == self 
   end 
    
  end

   def genres 
    self.songs.map do |element|
      element.genre 
    end 
  end 

  end

