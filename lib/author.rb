require 'pry'

class Author

    attr_accessor :name

    def initialize(name)
        @name = name

    end

    def posts
        Post.all.select {|post| post.author == self} 
    end

    def add_post(post) #takes in an argument of a post 
       post.author = self #and associates that post with the author (post.author) by telling the post that it belongs to that author ( = self)
    end

    def add_post_by_title(post) #takes in an argument of a post title,  
       new_post = Post.new(post) #creates a new post with it
       add_post(post) #and associates the post and author
    end
end

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
