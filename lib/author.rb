class Author

  attr_accessor :name, :all

  @@post_count = 0
  
  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post_title)
    post_title.author = self 
  end

  def posts 
      Post.all.select {|post| post.author == self}
   end
  def add_post_by_title(post_title)
    post_title = Post.new(post_title)
    post_title.author = self
  end

  def self.post_count
    Post 
    Post.all
    Post.all.count
  end
end