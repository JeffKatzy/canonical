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

