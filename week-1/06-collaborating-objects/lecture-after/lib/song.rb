class Song
  attr_accessor :artist
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
  # def artist
  # end

  # def artist=(song)
    # @song = song
  # end
  def self.all
    @@all
  end

  def add_artist(artist)
    
  end
end

# 
# paul = Artist.new('paul')
# rock = Song.new('im a rock')

# song.add_artist(paul)
# paul.songs -> [rock]
