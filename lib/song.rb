class Song
  attr_accessor :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end 
  
  def name
   @name
  end

  
  
  
end 