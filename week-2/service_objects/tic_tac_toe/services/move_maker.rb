class MoveMaker
  attr_accessor :person
  def initialize(person, board)
    @person = person
    
  end

  def run
    board.square(person.piece)
    board = Board.new
    board.squares.first.marker = 'x'

    # square = <square>
  end

  def choose_square
    ChooseSquare.new.run
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