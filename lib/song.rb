class Song
  
  attr_accessor :artist, :name
@@all=[]

def initialize(song_name)
  @name = song_name
  @@all << self
end

def self.all
  @@all 
end 


def artist_name
  if self.artist.nil?
    nil
    else 
     self.artist.name
  end
end

end

