I. Discussion Questions
  1. Describe what is happening in environment.
    what is each line doing?
    Why do we need to do this?

  2. What is happening in console.rb
    - what do you have access to if you run ruby console.rb

  3. Note that we have an artist class and a song class.  Describe the relationship between artists and songs.
    song belongs to an artist
    artist has many songs
    artist -> songs
    artist.songs
    song.artist
  4. Build out the following
    - Artist.all 
      -> should return all of the artists that have been initialized
    - Song.all
      -> should return all of the songs that have been initialized
    - Artist.reset
      -> should clear all of the artists from the class variable @@all in artist.  (After calling Artist.reset, Artist.all should return [])
    - Build the following getter and setter methods
      For artist: name
      For song: name
  5. Object Relations
    - Build the following instance method
      - artist.add_song(song)
        You should pass through a *song instance* to the add_song method
        After passing through a song to the add_song() method, you should be able to call artist.songs -> [song]
        (ie it should return an array with the song you added, in the array)
      - Bonus
        - kanye = Artist.new
        - touch_the_sky = Song.new
        - After calling kanye.add_song(touch_the_sky), then when you call touch_the_sky.artist it should automatically return kanye
II. Lecture
  - Review environment
    - require relative is like copying the contents of the code into the file
    - Pry.start opens up the console after code is loaded
  1. Review the object basics problems
  2. Review self
    - boogie board successful for this
    - describe concept of being inside an object
    - describe method dispatch
  3. Give Object Relations time to do
  4. Review Object Relations
  5. Review Specs 
    - build out specs
    - how to read specs
    - show how when change data in the spec, it changes in the method