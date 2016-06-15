require 'pry'
class Exhaler 
	attr_accessor :given_words, :dragon

	def initialize(dragon, rider, given_words)
		@given_words = given_words
	end

	def run
		if !given_words.empty?
      dragon.say given_words
    elsif rider && rider.created_at <= (Time.now - 7*24*3600) && dragon.weight && dragon.weight >= 10000
      dragon.say 'We can crush anything!!'
    elsif
    # When rider is over a week old, then when dragon spits fire
    rider && rider.created_at <= (Time.now - 7*24*3600)
      dragon.say 'Eat Flames!!'
    else
      if rider && rider.created_at > (Time.now - 7*24*3600)
        dragon.say 'Bummer. No flames, just smoke.'
      end
    end
	end
	
end


# II. Refactoring Process
	# A. Move big method code to new object
		# 1. Create a class with same initialization arguments as BIGMETHOD's arguments 
	   		# a. (and initialize with other dependencies)
	   		# b. create accessors to these dependencies 
		# 2. Copy & paste the method's body in the new class, with no arguments
		# 3. Replace original method with a call to the new class
	    	# a. Change calls of self to the respective class
	    

	# B. Identify messy code
		# 1. Not dry
		# 2. Different level of abstraction (ie. not in the summary of the method)
		# 3. Complex calculations
	# C. Write intention revealing code
		# 1. write a comment that describes the method
		# 2. create a method inspired by that comment
		# 3. Wrap the relevant logic in the new method
		# 4. Instead of directly calling the logic, call the method instead




		
# III. TLDR
	# A. Methods less than five lines long
	# B. Objects less than 100 lines long

  # Additional Resources (and inspiration from): 
  	# Practical Object Oriented Programing Sandi Metz - (the bible to clean code)
    # https://www.youtube.com/watch?v=ozWzehOEeuI Tute - Rails Conf 2014
    # https://www.youtube.com/watch?v=J4dlF0kcThQ - Katrina Owens Cascadia Ruby
    # http://www.refactoring.com/catalog/replaceMethodWithMethodObject.html - Martin Fowler

