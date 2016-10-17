RSpec.describe Game do
  subject(:game) { described_class.new }

  it { is_expected.to have_many :players }
  it { is_expected.to respond_to :server }

  describe '.start' do
    it 'sets up a game' do
      game = described_class.start('Jeff', 'Lydia')

      expect(described_class.last).to eq game
      expect(described_class.last.players.map(&:name)).to include 'Jeff'
      expect(described_class.last.players.map(&:name)).to include 'Lydia'
    end
  end

  describe '#play' do
    let(:player_1) { double :player, name: 'Jeff', id: 999, save_parents: nil }
    let(:player_2) { double :player, name: 'Lydia', id: 999, save_parents: nil }
    let(:printer) { double :printer, print_server: nil, print_winner: nil }

    it 'switches the server' do
      allow(game).to receive_message_chain("players.first") { player_1 }
      allow(game).to receive_message_chain("players.last") { player_2 }
      allow(game).to receive(:random_player).and_return(player_1)

      10.times do
        game.play(printer)
        expect(game.server.name).to eq 'Jeff'
        
        game.play(printer)
        expect(game.server.name).to eq 'Lydia'
      end
    end
  end
end