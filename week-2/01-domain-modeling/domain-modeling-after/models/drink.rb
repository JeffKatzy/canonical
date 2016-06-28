class Drink
  attr_accessor :name, :alcohol_content, :hot
  @@all = []

  def self.all
    @@all << self
  end

  def initialize(name, price, alcohol_content)
    @name = name
    @alcohol_content = alcohol_content
    @price = price
  end
end