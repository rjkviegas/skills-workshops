require './lib/printer'

class Game
  include DataMapper::Resource

  property :id, Serial
  has n, :players
  belongs_to :server, model: Player

  def self.start(player_name_1, player_name_2, player_class: Player)
    players = [player_class.create(name: player_name_1),
               player_class.create(name: player_name_2)]
    game = new(players: players)
    game.one_time_only_setup
    game
  end

  def one_time_only_setup
    set_first_server
  end

  def play(printer = Printer.new)
    printer.print_server(server)
    printer.print_winner(random_player)
    self.server = non_server
    save
  end

  private

  def set_first_server
    self.server = random_player
    save
  end

  def random_player
    [players.first, players.last].sample
  end

  def non_server
    server == players.first ? players.last : players.first
  end
end
