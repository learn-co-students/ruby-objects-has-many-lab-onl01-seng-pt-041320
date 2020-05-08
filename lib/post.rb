class Post
attr_accessor :title, :author   # Setter and getter defined 

    @@all =[]   # Created empty array to track all the post instances.

    def initialize(title)
        @title = title
        @@all << self   # Added new post instances to the tracker arrar.
    end

    def self.all
        @@all   # Post instance defined to be part of the array
    end

    def author_name # Checked to see if the post has an author variable, if it does assing the author to the intance of the author name  if it doesn't return nil. 
        author.name if author
    end
end
