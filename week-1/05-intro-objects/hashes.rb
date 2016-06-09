duck = {name: 'daffy', age: 3}

def say_hi(duck)
  puts "my name is #{duck[:name]}"
end

change_name(duck, "donald")

def change_name(thing_to_change, new_name)
  thing_to_change[:name] = new_name
end

turtle = {name: 'splash', age: 10}

turtle[:name] = 'mr t.'

# 1. Factory mechanism with objects
# 2. Scope our methods
# Object definition: mechanism to encapsulate state and methods