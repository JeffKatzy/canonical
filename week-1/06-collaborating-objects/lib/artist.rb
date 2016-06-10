class Artist
  attr_accessor :name

  # def name
    # @name
  # end

  # def name=(name)
  #   @name = name
  # end

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_song(song)
    
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    # name = 'kanye'
    # self = Artist
    # give me all the artists
    # self.all
      # [<artist @name = 'kanye'>, <artist @name = 'paul simon'>]
    # find the one whose name is kanye
    self.all.find do |artist|
      binding.pry
      artist.name == name
    end
    binding.pry
  end
  


end

