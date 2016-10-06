require 'van'

describe Van do
  subject(:van) { described_class.hire }

  describe '::hire' do
    it 'hires an engine' do
      expect(van.engine).not_to be_nil
    end
  end

  it { is_expected.to respond_to :engine }
end
