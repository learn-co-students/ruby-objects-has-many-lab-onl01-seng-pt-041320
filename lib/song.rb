class Song

    @@all = []

    attr_accessor :artist, :name

    def initialize(name, artist = nil)
        @name = name
        @artist = artist
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        artist.name if artist
    end
end

# song = Song.new("name")
# # binding.pry
# adele = Artist.new("Adele")
# song.artist = adele
# # binding.pry
