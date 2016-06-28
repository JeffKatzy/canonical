require 'pry'
require 'gosu'

  def play(note, duration = nil, track = 1)
    raise 'first argument must be a string' unless note.class == String
    raise 'last argument must be a number' if duration && !(duration.is_a? Numeric)
    note = to_mp3(note, duration)
    # probably need to pull out the three below lines, in way to make more configurable
    # and play notes at the same time
    playing = note[:note].play
    sleep note[:duration] || 1
    playing.stop
  end

  def to_mp3(file, duration)
    note = hashify(file, duration)
    note[:note] = Gosu::Sample.new(file)
    note
  end

  def hashify(note, duration = nil)
    if note.class == String
      {note: note, duration: duration || 1}
    end
  end
