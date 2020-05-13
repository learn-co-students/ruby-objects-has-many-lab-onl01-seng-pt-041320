class Post 
    @@all = []
   attr_accessor :name, :author

   def initialize(name)
       @name = name
       save
   end

   def save 
       @@all << self
   end

   def self.all
       @@all
   end
end
