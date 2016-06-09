require 'pry'
class Car

  attr_accessor :name, :date_created
  @@count = 0
  # attr_reader :make
  # attr_writer :make

  def Car.count
    @@count
  end

  def initialize(make, model) #hook, callback
    @date_created = Time.now
    @make = make
    @model = model
    
  end



  # def make
  #   @make
  # end
  def something_else
    puts 'hello'
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

