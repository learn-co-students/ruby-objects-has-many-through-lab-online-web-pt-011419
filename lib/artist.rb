require "pry"

class Artist 
  
@@all = [] 

attr_accessor :name, :genre

def initialize(name)
  @name = name
  @genre = genre
  @@all << self
end
  
 def self.all 
   @@all
 end
 
 def new_song(name, genre)
   #binding.pry
   Song.new(name, self, genre)
 end
 
 def songs 
   Song.all.select do |s| 
     s.artist == self 
   end
 end
 
 def genres 
   songs.collect do |s|
   s.genre
  end
end
 
end