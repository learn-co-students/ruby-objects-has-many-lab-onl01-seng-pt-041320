class Song   # defined a class Song
    attr_accessor :artist, :name

    @@all = []  # Created empty array to tracks all the songs.

    def initialize(name)
        @name = name
        @@all << self # Added songs instaces created to the tracker array.
    end

    def self.all
        @@all
    end

    def artist_name
    self.artist && self.artist.name # checked to see if the Artist class already containan artist variable if t does assing artist variable to the artis name instance if it doesnt return nil.
    end
end

