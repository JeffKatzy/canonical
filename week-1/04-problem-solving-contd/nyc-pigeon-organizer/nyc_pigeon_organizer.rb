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

      # ["theo", "peter"]
      # TASK get to here...
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
   
      
end

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
