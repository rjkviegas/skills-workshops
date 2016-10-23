# coding: utf-8

require 'struggle_table_flipper'

describe StruggleTableFlipper do
  subject(:struggle_table_flipper) { described_class.new("Programming") }

  describe '#flipped_struggle' do
    it 'returns a string that contains the struggle' do
      expect(struggle_table_flipper.flipped_struggle).to include "Programming"
    end

    it 'returns a string that contains the flipped table' do
      expect(struggle_table_flipper.flipped_struggle).to include "(╯°□°）╯︵ ┻━┻"
    end
  end
end
