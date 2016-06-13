class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    binding.pry
    song.artist=(self)
    # <song @name ='rock' @artist=<artist>>
    self.songs << song
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
      artist.name == name
    end 
  end
end


# artist = Artist.new('paul')
# song = Song.new('rock')
# artist.add_song(song)
# def name
    # @name
# end

# def name=(name)
#   @name = name
# end



