require 'pry'

class Author

    attr_accessor :name, :author, :title

    @@post_count = 0

    def initialize(name)
        @name = name
        @author = author
        @title = title

    end

    def posts
        Post.all.select {|post| post.author == self} 
    end

    def add_post(post_title) #takes in an argument of a post 
       post_title.author = self #and associates that post with the author (post.author) by telling the post that it belongs to that author ( = self)
    end

    def add_post_by_title(post_title) #takes in an argument of a post title,  
       post_title = Post.new(post_title) #creates a new post with it
       post_title.author = self #and associates the post and author

    #    binding.pry
    end

    def self.post_count
        Post.all.count
    end
end

# class Post 
#      @@all = []
#     attr_accessor :name, :author

#     def initialize(name)
#         @name = name
#         save
#     end

#     def save 
#         @@all << self
#     end

#     def self.all
#         @@all
#     end
# end
