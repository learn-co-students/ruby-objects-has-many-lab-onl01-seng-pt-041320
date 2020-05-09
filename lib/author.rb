require 'pry'

class Author
    attr_accessor :name, :posts

    @@count = 0

    def initialize(name)
        @name = name
        @posts = []
    end

    def add_post(post)
        #binding.pry
        @posts << post
        post.author = self
        @@count += 1
    end

    def posts
        Post.all.select{|post| post.author == self}
    end

    def add_post_by_title(title)
        new_post = Post.new(title)
        add_post(new_post)
        @@count += 1
    end

    def self.post_count
        @@count
    end

end