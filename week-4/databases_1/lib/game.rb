require './lib/printer'

class Game
  include DataMapper::Resource

  property :id, Serial
  has n, :players

  def self.start(player_name_1, player_name_2, player_class: Player)
    players = [player_class.create(name: player_name_1),
               player_class.create(name: player_name_2)]
    game = new(players: players)
    game.save
    game
  end

  def play(printer = Printer.new)
    printer.print_winner(random_player)
    save
  end

  private

  def random_player
    [players.first, players.last].sample
  end
end
