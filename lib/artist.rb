
class Artist
    attr_accessor :name, :songs # Setter and Getter defined
    @@song_count = 0  # Set the songs counter to zero.

    def initialize(name) # Initialized name instance.
        @name = name
        @songs = []  # Empty array created for artist songs Instance.
    end 
    
    def add_song(song)
        self.songs << song # Added song instace to the artist list of songs.
        song.artist = self # Artist assigned to song instance
        @@song_count += 1  # Added one song instance to the songs tracker.
    end

    def songs
        Song.all.select {|song| song.artist == self} # call the song.rb file to Select  all the songs the artist has made and compared to the self instance of the class.
    end

    def add_song_by_name(name)
        song = Song.new(name)         # Created song instance with a title.
        self.songs << song    # Add song instance to artist list of songs.
        song.artist = self    # Assigned the artist to the song instance.
        @@song_count += 1     # Added one song instance to the songs tracker.
    end

    def self.song_count
        Song.all.count  # Return the total count of the song instances.
    end

end