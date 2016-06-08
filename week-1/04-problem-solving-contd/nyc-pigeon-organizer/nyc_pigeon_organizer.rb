require 'pry'
    # pigeon_data = {
    #   :color => {
    #     :purple => ["Theo", "Peter Jr.", "Lucky"],
    #     :grey => ["Theo", "Peter Jr.", "Ms. K"],
    #     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    #     :brown => ["Queenie", "Alex"]
    #   },
    #   :gender => {
    #     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    #     :female => ["Queenie", "Ms. K"]
    #   },
    #   :lives => {
    #     "Subway" => ["Theo", "Queenie"],
    #     "Central Park" => ["Alex", "Ms. K", "Lucky"],
    #     "Library" => ["Peter Jr."],
    #     "City Hall" => ["Andrew"]
    #   }
    # }

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
  
    # data[:color] = { 
    #     :purple => ["Theo", "Peter Jr.", "Lucky"],
    #     :grey => ["Theo", "Peter Jr.", "Ms. K"],
    #     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    #     :brown => ["Queenie", "Alex"]
    #   },
end

# initial_structure = {"Alex"=>{:color=>[], :gender=>[], :lives=>[]},
#  "Theo"=>{:color=>[], :gender=>[], :lives=>[]},
#  "Peter Jr."=>{:color=>[], :gender=>[], :lives=>[]},
#  "Andrew"=>{:color=>[], :gender=>[], :lives=>[]},
#  "Lucky"=>{:color=>[], :gender=>[], :lives=>[]},
#  "Queenie"=>{:color=>[], :gender=>[], :lives=>[]},
#  "Ms. K"=>{:color=>[], :gender=>[], :lives=>[]}}

# pigeon_list = {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Subway"]
#   },
#   "Peter Jr." => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Library"]
#   },
#   "Lucky" => {
#     :color => ["purple"],
#     :gender => ["male"],
#     :lives => ["Central Park"]
#   },
#   "Ms. K" => {
#     :color => ["grey", "white"],
#     :gender => ["female"],
#     :lives => ["Central Park"]
#   },
#   "Queenie" => {
#     :color => ["white", "brown"],
#     :gender => ["female"],
#     :lives => ["Subway"]
#   },
#   "Andrew" => {
#     :color => ["white"],
#     :gender => ["male"],
#     :lives => ["City Hall"]
#   },
#   "Alex" => {
#     :color => ["white", "brown"],
#     :gender => ["male"],
#     :lives => ["Central Park"]
#   }
# }




# steps
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


