require_relative '../config/environment.rb'
require_relative 'seed.rb'

def reload!
    load('../config/environment.rb')
end

action = 0
while action != 'exit'
    puts 'what is the action you would like to take'
    action = gets.chomp
    
    case action
    when 'create'
        
        controller = FoodsController.new
        food_name = controller.show_me_the_form
        controller = FoodsController.new
        controller.create(food_name)
    when 'show'
        puts 'what is the name of the food you would like to see'
        food_name = gets.chomp
        food = Food.find_by_name(food_name)
        puts "Food: #{food.name}"
    end
end

Pry.start