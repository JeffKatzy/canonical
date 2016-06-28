class Runner
  attr_reader :person
  def run
    
    person = LoginUser.new.run
    ChoosePiece.new(user, board)
    GamePlayer.new.run
  end

  def choose_pieces

  end
end

runner = Runner.new
runner.run