candies = ['twix', 'smarties', 'reeses pieces', 'snickers', 'three musketeers', 'milky way', 'swedish fish', nil, 1, 2]

# tasks

# 1. Add in another twix as the last element of the array
# 2. Add in butterfinger as the 30th element of the candies array
# 3. Only return the elements who begin with a string (in an array)

# 4. Return a collection of all of the elements who begin with a letter t (in an array)
# 5. Return an array with only elements who are strings, and capitalize the first word (of each element in an array)
# 6. Return the first element that begins with the letter s

# 7. Print out all of the elements in the candies array
# 8. Add in an array of the ingredients as the last element of the array

# 9. Add an element to the end of the candies array, which is an array of ingredients of swedish fish: sugar, and food coloring
# 10. Now change the candies array such that each ingredient is an element of the candies array (ie. the array is no longer nested)
# 11. Now we want an inventory of all of the candies, each candy should only be listed one time

# techniques for breaking it down
  # candies.select { |x| x == String }
  # candy[0].downcase == 't'
    # can I get retrieve letters of a string with bracket notation?


candies = ["Twix", "Smarties", "Reeses pieces", "Snickers", 
  "Three musketeers", "Milky way", "Swedish fish"]

# For each element we want to 
  # go through each of the words, and capitalize them

candies.map do |candy|
  # [reeses, pieces]
  candy.split.map do |word|
    word.capitalize
  end.join(" ")
  # [Reeses, Pieces]
end

# number 5 is tricky
# try to split and then join it back together 


# problems with each 
# what does each return...
# sandwich code


# Things I liked
  - reading documentation

# Iterator Methods



1. select - reduces the number of elements that i started with 
2. each - does not reduce the number of elements, does not modify the elements
3. map/collect - same number of elements, but modifies each one to be the return value of the block
4. find/detect - will return either one matching element, or nil

If I want to do an operation
  --> each 
If I want to change the array
  --> map
If I want to reduce the number of elements
  -To only one element
   --> find/detect
  - To multiple elements
   --> select
  - to remove nil values
    --> compact
  - to have only uniq values
    - uniq
If I want to coerce 
  - From a string 
      --> split
  - From an array to a string 
    --> join


# Procedure
 - rephrase the problems
 - think about how we would solve this without code
 - make our code reflect our thought process

 - break the problem up into a smaller problem, and try a test case in the console