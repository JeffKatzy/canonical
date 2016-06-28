Service Objects
A. Goals
  - loosely coupled
    the more reusable your code will be 
  - highly cohesive
    do the methods only do one thing

  - Win
    our product will change over time.
    our codebase will change over time.
    cost of change goes down.

What does this mean for objects
  class Person
    attr_accessor :name, :age

    def salary
      unlees self.age > 18 return 'person too young'
      Salary.new
    end
  end

  whenever we reference another object, we are tying our codebase together.

  How do we get our objects to talk to one another?
  
  Separate out being from doing.
       ----  ---- 
  [person]-> [board]-> [square]
    
  class Person
    attr_accessor :name, :hometown
    
  end 

  class MakeMover
    def initialize
  end
  
  

Models should not execute code that executes the state of the code.





