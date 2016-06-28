A. Objects
  calling methods within methods 
    - do you need to do self?

B. Small methods
- loosely coupled
  - having the code not tied to other parts of the code 

    class Vehicle
      def carborator
      end

      def rims
      end
    end
    class Car < Vehicle
    end

    class Engine
      def carborator
        Carborator.new
      end
    end

    Car.new

    class Car

      def wheels
        Wheel.new
      end

      def engine
        Engine.new
      end
    end


- highly cohesive
  - code does one thing


TOOL: 
  SMALL METHODS - methods that are five lines or less.

  def start_engine
   get_the_gas
   move_the_motor
  end

  def get_the_gas
  end

  def move_the_motor
  end
