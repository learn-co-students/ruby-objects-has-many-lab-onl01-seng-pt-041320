class Post
  attr_accessor :author, :title 
  
  @@post_count = 0
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
    @@post_count += 1
  end
  
  def self.all
    @@all
  end

  def author_name
    if author 
      self.author.name 
    else
      nil
    end
  end
  
  def self.post_count
    @@post_count
  end

end 