class MoveMaker
  attr_accessor :person
  def initialize(person, board)
    @person = person
  end

  def run
    board.square(person.piece)
    
  end


end


class Runner
  Person.new
  register_user = RegisterUser.new(name)
  register_user.run
  until GameChecker.new.over?
    MoveMaker.new(person, board)
  end
end