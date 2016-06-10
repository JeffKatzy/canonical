class Artist
  attr_accessor :name

  # def name
    # @name
  # end

  # def name=(name)
  #   @name = name
  # end

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all 
  end

  def self.find_by_name(name)
    
  end
  


end

