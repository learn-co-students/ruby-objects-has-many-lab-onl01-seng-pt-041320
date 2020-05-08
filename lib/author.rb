class Author		
  attr_accessor :name, :posts 
  @@post_count = 1
  
  def initialize(name)
      @name = name 
      @posts = []
  end 
  
  def add_post(posts)
    posts.author = self
    @posts << posts
    @@post_count += 1
  end
 
  def posts
    Post.all.select {|posts| posts.author == self}
  end
  
  def add_post_by_title(posts)
      posts = Post.new(posts)
      add_post(posts)
  end 
  
  def self.post_count
      @@post_count
  end 
  
end 