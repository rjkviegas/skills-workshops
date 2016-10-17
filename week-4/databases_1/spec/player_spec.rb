RSpec.describe Player do
  subject(:player) { described_class.new }

  it { is_expected.to have_property :name }
  it { is_expected.to belong_to :game }
end