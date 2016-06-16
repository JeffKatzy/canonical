class Drink
  attr_accessor :alcohol_content, :hot
  attr_writer :name
  @@all = []

  def self.all
    @@all << self
  end

  def special_name
    name
  end

  def initialize(name)
    binding.pry
    # 1. it initializes a new object 
    # 2. it sets self equal to the object that has just been initialized
    # 3. 
  end

  def name=(name)
    @name = name
  end

  def name
    self
    binding.pry
  end

  def initialize(name, price, alcohol_content)
    @name = name
    @alcohol_content = alcohol_content
    @price = price
  end
end

