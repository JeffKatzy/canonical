# A. Modeling Data Structures
  - arrays
    ['e', 9, 90]
  - hashes
    notes = [{pitch: 'e', rhythm: 9, decibals: 90}, {pitch: 'e', rhythm: 9, decibals: 90}]
    notes.first.keys
    [:pitch, :rhythm, :decibals]
# B. Iterating with hashes
  - quiz

# 1.
notes = [['e', 9, 90], ['e', 3, 90]]

# 2. 
notes = [[['a7', 1.5, 90], ['a7', .5, 90], ['a10', 1, 90]], 
[['a7', 1.5, 90], ['a7', .5, 90], ['a10', 1, 90]]]


# question 2

chords = {g1: ['g9', 'd9', 'a7'], g2: ['g12', 'd12', 'a10']}
chords[:g2] => # ['g12', 'd12', 'a10']

chords = [['g1', ['g9', 'd9', 'a7']], ['g2' ['g12', 'd12', 'a10']]]

notes = [{pitch: chords[:g1], rhythm: 1, decibals: 90}]

candies = [{name: 'twix', ingredients: ['caramel', 'nouget', 'chocolate']}, 
  {name: 'reeses peanut butter', ingredients: ['peanut butter', 'chocolate']}
]

candies.each do |candy|
  # candy = {name: 'twix', ingredients: ['caramel', 'nouget', 'chocolate']}
  #candy = {name: 'reeses peanut butter', ingredients: ['peanut butter', 'chocolate']}
  candy.each do |k, v|
    puts k 
  end
end

# name
# ingredients
