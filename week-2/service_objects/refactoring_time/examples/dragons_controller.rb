require_relative 'setup'
require_relative 'exhaler'
require 'pry'

class DragonsController

  def has_run
    false
  end

  def exhale(dragon, rider, given_words)
    exhaler = Exhaler.new(dragon, rider, given_words)
    exhaler.run
  end
end


run = Runner.new
run.run
  - 

# I. Refactoring Goals
  # A. Nicer to your future self
  # B. Nicer to your team
    # 1. More readable code
    # 2. Less entangled code (fewer fingers on same code)
    # 3. More flexible to change
    # 4. Fewer merge conflicts
  # C. Get a job
    # 1. Other developers want to work with you
    # 2. Shows a careful developer
    # 3. Makes it easier to read clean code