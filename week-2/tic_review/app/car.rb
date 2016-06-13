
  player
    person
    computer
  jeff = Person.find_by_name('jeff')
  @jeff = Person.new('jeff')
  @computer = Computer.new

  Player.new(@jeff)
  Player.new(@jeff)
  Player.new(@computer)
  Square.new
  Board.new



require 'pry'

class Board
  def spaces
    9.times do |int|
      Space.new
    end
  end
end


class Vehicle

  def initialize
    @type = 'prius'
  end

  def motor
    puts 'i use gas'
  end 

  def wheels
    puts 'go round'
  end

  def rims

  end
end

class Yacht < Vehicle
  

end


class Car 
  

  def motor
    Motor.new
  end

  def wheels
   Wheel.new
  end
  
end

class Wheel

  def initialize
    puts 'go round'
  end
end


class Truck < Vehicle
  
end

class Motor

  def initialize
  end

  def pistons

  end
end

class 

Pry.start




