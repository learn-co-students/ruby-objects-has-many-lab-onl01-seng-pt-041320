

class Author
    attr_accessor :name

    def initialize(name)
        @name = name 
    end

    def posts
       Post.all.select {|post| post.author == self}
    end

    def add_post(post)
       post.author = self
    end

    # 1 - takes in an argument of a post title
    # 2 - creates a new post with it 
    # 3 - associates the post and author
    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
    end

    def self.post_count
        Post.all.count
    end 
    

end