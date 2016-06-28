I. steps
  # new data structure to fill in
      # each name is a key of the hash 
      # each value is a hash
  #BREAK down how to create 
  # 'the new data structure to fill in'
    # {"theo" => {}, "Peter Jr." => {}}
    # give me a list of unique names
      # make sure the 
    # assign these names as the key to a hash, 
    # assign each values as being a hash
    # place in the relevant attributes

II. Solution
A. Initial Structure to work to 
  # initial_structure = {"Alex"=>{:color=>[], :gender=>[], :lives=>[]},
  #  "Theo"=>{:color=>[], :gender=>[], :lives=>[]},
  #  "Peter Jr."=>{:color=>[], :gender=>[], :lives=>[]},
  #  "Andrew"=>{:color=>[], :gender=>[], :lives=>[]},
  #  "Lucky"=>{:color=>[], :gender=>[], :lives=>[]},
  #  "Queenie"=>{:color=>[], :gender=>[], :lives=>[]},
  #  "Ms. K"=>{:color=>[], :gender=>[], :lives=>[]}}
B. Solution
def nyc_pigeon_organizer(data)
  # new data structure to fill in
    # list of names
    names = data[:gender][:male] + data[:gender][:female]
    # {"theo" => {}, "Peter Jr." => {}} 
        initial_structure = names.each_with_object({}) do |name, initial_structure|
          # construct for me another hash where the keys are the attributes
          # and the values are an array
      attributes = data.keys
      attributes_hash = attributes.each_with_object({}) do |attribute, attributes_hash|
            attributes_hash[attribute] = []
      end
      initial_structure[name] = attributes_hash
    end
  # fill in the data structure
    # fill in color - reduce the problem
      # go through the list of colors - thought about doing it w/o code
        # for each color, go through each pigeon
         # for each pigeon, add in the respective color 
  # [:color, :gender, :lives]
  data.keys.each_with_object(initial_structure) do |attribute, working_hash|
    # :color
    # :gender
    data[attribute].each do |trait, names|
       # color => :purple 
       # names => ["Theo", "Peter Jr.", "Lucky"],
      names.each do |name|
        working_hash[name][attribute] << trait.to_s
      end
    end
  end

