class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def new_song(title, genre)
    song = Song.new(title, self, genre)
    @songs << song
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end
end
