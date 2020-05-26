require 'pry'

class Artist

    attr_accessor :name 

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        #binding.pry
    end

    def self.all
        @@all
    end
    
    def songs
        Song.all.select do |song|
        song.artist == self
    end
end
        
    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        song = Song.new(name) 
        song.artist = self
        song
    end

    # def songs
    #     Song.all.select {|song| song.artist == self}
    # end

    def self.song_count
    #binding.pry
    Song.all.count 
    end  

end