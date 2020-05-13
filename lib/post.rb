class Post 
    @@all = []
   attr_accessor :title, :author

   def initialize(title)
       @title = title
       @author = author
       self.save
   end

   def save 
       @@all << self
   end

   def self.all
       @@all
   end

   def author_name #knows the name of its author
    self.author ? self.author.name : nil
   end
end
