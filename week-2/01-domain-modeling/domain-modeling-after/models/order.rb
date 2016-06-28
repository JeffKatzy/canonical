class Order
  attr_accessor :drink, :bartender, :customer

  @@all = []
  
  def initialize(drink, bartender, customer)
    @drink = drink
    @bartender = bartender
    @customer = customer
    @@all << self
  end
  
  def self.all
    @@all
  end
end