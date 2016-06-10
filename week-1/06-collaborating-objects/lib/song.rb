class Song
  def artist
  end
end

# 
paul = Artist.new('paul')
rock = Song.new('im a rock')

song.add_artist(paul)

paul.song -> rock