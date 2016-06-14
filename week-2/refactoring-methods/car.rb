require 'pry'
class Car
  attr_accessor :color

  # def color
  #   @color
  # end

  # def color=(color)
  #   @color = color
  # end
  @@all = []
  AVAILABLE_COLORS = ['black', 'red']
  def self.all
    @@all    
  end

  def initialize(color)
    @color = color
    @@all << self
  end

  # def self.available_colors
  #   AVAILABLE_COLORS
  # end

  def self.change_all

    # change every car's color to red
      # give me all the cars
      self.all.each do |car|
        car.color = 'black'
      end
      # go through each car, and change its color
    # each method

  end

  


  def self.available_colors
    @@available_counter += 1
    puts self
    ['red', 'green']
  end
  # Car.available_colors

  def move

  end

  def start_car
    engine_turns_on = 'foo'
    self.engine_turns_on
    self.combustion
  end

  def engine_turns_on

  end

  def combustion
  end
end

Pry.start