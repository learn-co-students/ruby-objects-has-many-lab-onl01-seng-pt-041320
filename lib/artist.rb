require 'pry'
class Artist
    attr_accessor :name

    def initialize(name)
        @name = name
        @songs = []
        #binding.pry
    end

    def songs
        Song.all
    end

    def add_song(song)
        @songs << song
        song.artist = self
        #binding.pry
    end

    def add_song_by_name(name)
        new_song = Song.new(name)
        new_song.artist = self
        #binding.pry
    end

    def self.song_count
        Song.all.count
    end
end