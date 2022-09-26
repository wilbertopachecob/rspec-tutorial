require 'rspec'
require './dog'

describe Dog do
    describe '#bark' do
        it 'returns the string Woof!' do
            expect(subject.bark).to eql('Woof!')
        end
    end

    describe '#hungry?' do
        context 'when hungry_level is more than 5' do
            it 'returns true' do
                dog = described_class.new(hungry_level: 7)
                expect(dog.hungry?).to eql(true)
            end    
        end

        context 'hungry_level is less or equal to 5' do
            it 'returns false' do
                dog = described_class.new(hungry_level: 5)
                expect(dog.hungry?).to eql(false)
            end    
        end
    end
end