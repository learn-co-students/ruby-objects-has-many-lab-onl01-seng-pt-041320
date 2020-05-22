class Song 
  attr_accessor :name, :artist 

  @@all = []
  @@song_count = 0

  def initialize(name, artist=nil)
    @name = name
    @artist = artist
    @@all << self
    @@song_count += 1
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end

  def self.all
    @@all
  end
  
  def self.song_count
    @@song_count
  end
  
end