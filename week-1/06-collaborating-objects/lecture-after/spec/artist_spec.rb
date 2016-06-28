require 'rspec'
require_relative '../environment.rb'

describe Artist do 
  describe 'add_song' do 
    it 'adds the song to the songs collection' do 
      artist = Artist.new('led zeppelin')
      song = Song.new('stairway to heaven')

      artist.add_song('lkasjkldjkl')
      expect(artist.songs).to include(song)
    end

    it 'artist to the song' do 

    end
  end
end