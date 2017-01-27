require './lib/printer'

class Game
  include DataMapper::Resource

  property :id, Serial
  has n, :players

  def self.start(player_name_1, player_name_2, player_class: Player)
    players = [player_class.create(name: player_name_1),
               player_class.create(name: player_name_2)]
    create(players: players)
  end

  def play_point(printer = Printer.new)
    printer.print_point_winner(random_player)
  end

  private

  def random_player
    [players.first, players.last].sample
  end
end
