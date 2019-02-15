class Genre
  attr_reader :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end
  def songs
    Song.all.select { |song| song.genre == self }
  end
  def self.all
    @@all
  end
  def artists
    songs.map {|song| song.artist}
  end
end
