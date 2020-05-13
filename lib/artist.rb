require 'pry'

class Artist
    attr_accessor :name, :all
     
    @@song_count = 0

    def initialize(name)
        @name = name
       #@songs = []
    end   
    
    def add_song(song) #takes in an argument of a song 
        song.artist = self #and associates that song with the artist by telling the song that it belongs to that artist (artist collection).
        # @songs << song #shoveling every instantiated songs into this array of song collections
        # @@song_count += 1 #the total songs associated to all artists will inicrement as songs are instantiated
    end

    def songs # has many songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song_by_name(song)
        song = Song.new(song) #takes in an argument of a name and creates the new song
        add_song(song) #and adds that song to the artist's collection.
    end

    def self.song_count #is a class method that returns the total number of songs associated to all existing artists
        Song.all.count #Song.all is referencing the Song class
        # binding.pry
        
    end
end

class Song
    attr_accessor :name, :artist

        @@all = [] #empty array that will recieve saved instantiated songs

    def initialize(name)
        @name = name
        save
    end

    def save #saves every instantiated song into the class variable @@all
        @@all << self
    end

    def self.all
        @@all
    end

#     def artist_name
      
#     end
end