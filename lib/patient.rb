class Patient 
 
  @@all = []
  
  def initialize (name)
    @name = name 
    @@all << self
  end 
  
  
  def all 
    @@all
  end 
end 