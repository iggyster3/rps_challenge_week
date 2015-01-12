class Game

  attr_accessor :player1, :player2

  def computers_option
    @rps_options = ['rock', 'paper', 'scissors']
    @computer_choice = @rps_options.sample
  end

end
