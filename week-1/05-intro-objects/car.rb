require 'pry'
class Car

  attr_accessor :name, :date_created
  @@count = 0
  @@all = []
  # attr_reader :make
  # attr_writer :make

  def self.count
    @@count
  end
  
  def self.all
  
    @@all 
  end
  # car_stuff = {make: 'ford', model: 'prius'}
  # Car.new(car_stuff)
  
  def initialize(attributes_of_car) #hook, callback
    
    @date_created = Time.now
    @make = attributes_of_car[:make]
    @model = attributes_of_car[:model]
    @color = attributes_of_car[:color]
    @@count += 1
    @@all << self
  end

  def self.find_by_name(model)
    
  end



  # def make
  #   @make
  # end
  def something_else
    binding.pry
    self.stuff
    puts 'hello'
  end

  def stuff
    binding.pry
  end

  def make=(make)
    @make
  end


  def say_hi
    puts "hi my name is #{name}"
  end

  # def name=(name) # begins here
  #   @name = name
  # end # ends here

  # def name
  #   @name
  #   # bertha
  # end

  # def date_created
    # @date_created
  # end
  
  # def date_created=(date)
  #   @date_created = date
  # end
end
Pry.start

# def stuff
#   puts 'hola'
# end

