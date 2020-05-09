class Song
  attr_accessor :artist, :title
  
  @@all = []
  
  def initialize(title, artist=nil)
    @title = title
    @artist =artist
    @@all << self
  end
  
  def artist_name
    if self.artist
      self.artist.name
    else
      NIL
    end
  end
  
  def self.all
    @@all
  end
end