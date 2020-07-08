
require 'encapsulation-ex4.rb'

describe Diary do
    describe '#add_entry' do

    it 'throws an error when locked' do
        expect { subject.add_entry }.to raise_error(RuntimeError)
    end
    it 'successful when called after unlock' do
        expect(subject.unlock.add_entry).to eq 'Entry added'
    end
end

    describe '#get_entries' do
    it 'throws an error when locked' do
        expect { subject.get_entries }.to raise_error(RuntimeError)
    end
    it 'successful when called after unlock' do
        expect(subject.unlock.get_entries).to eq 'Entries got'
    end
end

    describe '#lock' do
    it 'throws an error when called on instance of Diary' do
        expect { subject.lock }.to raise_error(RuntimeError)
    end
end
end


