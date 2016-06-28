moe = Bartender.new('moe', 'springfield')
selma = Bartender.new('selma', 'springfield')

homer = Customer.new('homer', 'springfield')
maggie = Customer.new('maggie', 'springfield')

duff = Drink.new('duff', 4, true)
juice = Drink.new('oj', 3, false)

# drink, bartender, customer
order = Order.new(duff, selma, homer)
second = Order.new(juice, moe, maggie)
third = Order.new(juice, selma, homer)


