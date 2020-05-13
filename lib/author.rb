class Author 
  attr_accessor :name 
  
  @@post_count = 0

  def initialize(name)
    @name = name 
  end
  
  def posts
    Post.all.filter{|post|post.author == self}
  end
  
  def add_post(post)
      post.author = self 
  end 
  
  def add_post_by_title(post_title)
   post = Post.new(post_title)
   post.author = self 
  end 
  
  def self.post_count
   posts_by_author = Post.all.filter{|post| post.author != nil}
   posts_by_author.length 
  end 
end 