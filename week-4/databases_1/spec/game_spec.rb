RSpec.describe Game do
  subject(:game) { described_class.new }

  it { is_expected.to have_many :players }

  describe '.start' do
    it 'sets up a game' do
      game = described_class.start('Jeff', 'Lydia')

      expect(described_class.last).to eq game
      expect(described_class.last.players.map(&:name)).to include 'Jeff'
      expect(described_class.last.players.map(&:name)).to include 'Lydia'
    end
  end

  describe '#play_point' do
    let(:player_1) { double :player, name: 'Jeff', id: 999, save_parents: nil }
    let(:player_2) { double :player, name: 'Lydia', id: 999, save_parents: nil }
    let(:printer) { double :printer, print_winner: nil }

    it 'prints the outcome of the point' do
      allow(game).to receive_message_chain("players.first") { player_1 }
      allow(game).to receive_message_chain("players.last") { player_2 }
      allow(game).to receive(:random_player).and_return(player_1)

      expect(printer).to receive(:print_point_winner).with(player_1)
      game.play_point(printer)
    end
  end
end
