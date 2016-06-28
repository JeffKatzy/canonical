I. Before lecture
  1. Modeling data structure discussion questions
     - modeling notes
     - modeling country flags
II. During Lecture
  A. Review Discussion Questions
    1. Look at submissions, and review how to model the data structure
    2. Arrays good for sequence, hashes good for attributes
       - can have array be value to hash k v pair
  B. Nested Data Structures - Identifying Block Arguments
    - candies = [{name: 'twix', ingredients: ['caramel', 'nouget', 'chocolate']}, 
  {name: 'reeses peanut butter', ingredients: ['peanut butter', 'chocolate']}
    ] 
    - Identify the block arguments
    - write in comment what each one is to remove abstraction
    candies.each do |candy|
          # candy = {name: 'twix', ingredients: ['caramel', 'nouget', 'chocolate']}
      #candy = {name: 'reeses peanut butter', ingredients: ['peanut butter', 'chocolate']}
      candy.each do |k, v|
        puts k 
      end
    end

    - Give block arguments quiz
III. After Lecture
  1. Make a chart where they compare hash vs array
      - Assigning values
      - Retrieving values
      - see bastard's guide
    2. Read through the documentation for hashes
      - Choose three methods that you think are the most interesting
      - Show an example of how you would use them 
      - Exchange with a partner
      - We will have a few students present in the front of class





