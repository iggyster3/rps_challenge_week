class Game

  attr_accessor :player1, :player2

  def initialize
    player1 = nil
    player2 = nil
  end

  def computers_option
    @rps_options = ['rock', 'paper', 'scissors']
    @computer_choice = @rps_options.sample
  end

  def add_player(player)
    self.player1 ? self.player2 = player : self.player1 = player unless has_two_players?
  end

  def ready?
    has_two_players? ? true : false
  end

private

  def has_two_players?
    !player2.nil?
  end

end
