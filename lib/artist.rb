class Artist
  attr_accessor :name
  
   @@song_count = 0 

  def initialize(name)
    @name = name 
  end
  
  def songs 
    Song.all.filter {|song| song.artist == self }
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
  end 
  
  def self.song_count
    songs_with_artist =  Song.all.filter {|song| song.artist != nil}
    songs_with_artist.length
  end
end 
