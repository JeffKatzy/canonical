I. Discussion 
  A. What are the problem solving techniques we know?
  1. Technical
    - make the problem smaller and isolate the hard parts
    - In iteration, just solve for one first
      teachers.select do |teacher|
        <!--  'avi' -->
        teacher[0] == 'a'
      end
    - make the problem less abstract
  2. General Problem Solving
    - rephrase the problem
    - Think about how you would solve the problem if you do not have a computer
      - Think of an analogy
      - Deconstruct how your brain/eyes are solving this problem
      - Translate this into code
II. Practice
  A. Instructors Problem
    Techniques -
      - remove the abstraction
      - break into steps
      instructors.each do |instructor, attributes|
    # attributes = {:age=>31, :fav_color=>"black", :places=>["long island"]}
    modified_places = attributes[:places].map do |place|
      place.split.map do |word|
        word.capitalize
      end.join(" ")
      # ["Colorado"]
      # ["New", "Jersey"]
      #  "New Jersey"
    end
    # modified_places => [Colorado, "New Jersey"]
    # places = ["colorado", 'new jersey']
    stringified_places = modified_places.join(", and ")
    # "Colorado and New Jersey'
    puts "#{instructor} is #{attributes[:age]} and he is from #{stringified_places}"
  end
    # "Avi is 31 and he is from Long Island"

  B. reject and coerce
    - think about the data structure you want
    - reject - strip away what you don't want 
    - coerce - move to that data structure
  C. Hash review
    - keys, can be symbol, string, anything.
    - use proper names for block arguments
II. Post Lecture
  - Work on pigeon
  - Take note of which problem solving techniques you used 
  - Are there any others that you like?
