require 'bundler/setup'
Bundler.require
require 'pry'
load_all './lib'

 play('lib/notes/D1.wav', 3)
  play('lib/notes/E1.wav', 1)
  play('lib/notes/F1.wav', 1)
  play('lib/notes/G1.wav', 1)

notes = [{pitch: 'lib/notes/D1.wav', rhythm: 1, decibals: 90}, {pitch: 'lib/notes/D1.wav', rhythm: 1, decibals: 90}]


 

 # 1. Play individual note
      # d triggers d note
 # 2. Iterate through this process
        # move through each element of the string





