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