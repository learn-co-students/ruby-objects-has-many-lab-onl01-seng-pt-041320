require 'pry'
class Author
attr_accessor :name

    @@all = []   # Created an empty array for all Authors

    def initialize(name)    # Initialized name instance 
        @name = name
        @@all << self   # shuvle the self instance of the class into the all array
    end

    def self.all  
        @@all        # Self class instance defined to be part of the all array
    end
    
    def add_post(post)  # Assing the author to the post instance
        post.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)  # Created a new post instance with a title
        post.author = self      # Assined the post autor to the self instance
    end

    def posts 
        Post.all.select {|post| post.author == self} # Call on the post.rb file to Select  all the post the author has made and compared to the self instance of the class.
    end

    def self.post_count
        Post.all.count  # Returned the total count of the post instance
    end
end
