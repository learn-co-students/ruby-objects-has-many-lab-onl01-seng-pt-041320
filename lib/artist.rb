class Artist
    attr_accessor :name, :all
     
    @@song_count = 0

    def initialize(name)
        @name = name
        @songs = []
       
    end   
    
    def add_song(song) 
        song.artist = self 
    end

    def songs 
        Song.all.select {|song| song.artist == self}
    end

    def add_song_by_name(song)
        song = Song.new(song)
        add_song(song)
    end

    def self.song_count
      #We need to go to the Song class like
      Song
      #then grab all the songs
      Song.all
      #and count them
      Song.all.count
    end
end