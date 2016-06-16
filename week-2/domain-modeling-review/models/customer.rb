class Customer
  # attr_accessor :name, :hometown
  
  def initialize(name, hometown)
    @name = name
    @hometown = hometown
  end

  def name=(name)
    @name = name
  end




  def orders
    Order.all.select do |order|
      order.customer == self
    end
  end

  def drinks
    # go through all of the orders from the customer
    # for each order, return the drink
    self.orders.map do |order|
      order.drink # <drink object>
    end

  end

end

