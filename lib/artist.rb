
class Artist
  attr_accessor :name

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
    @@song_count += 1
  end

  def self.song_count
    Song.all.count
  end

  def add_song(song_name)
    @songs << name
    song_name.artist = self
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song_name
    song.artist = self
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end    
end


