candies = ['twix', 'smarties', 'reeses pieces', 'snickers', 'three musketeers', 'milky way', 'swedish fish', nil, 1, 2]

candies.map! {|candy| 1}
# [1, 1, 1,1,1 ]
puts candies