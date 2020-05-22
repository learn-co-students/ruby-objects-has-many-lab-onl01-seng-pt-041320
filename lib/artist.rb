class Artist
    attr_accessor :name
    def initialize (name)
        @name = name
    end
    def songs
        Song.all.select {|song| song.artist == self}
    end
    def add_song (song)
        song.artist = self
    end
    def add_song_by_name (name)
        a = Song.new(name)
        a.artist = self
    end
    def self.song_count
        Song.all.count
    end
end



# class Artist

#     attr_accessor :name

#     def initialize (name)
#         @name = name
#     end

#     def songs
#      Songs.all.select {|song| song.artist == self}
#     end

#     def add_song (song)
#         song.artist = self
#     end

#     def add_song_by_name(name)
#         a = Song.new(name)
#         a.aritst = self
#     end

#     def self.song_count
#          Song.all.song_count
#     end

# end