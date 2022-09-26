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
            subject {described_class.new(hungry_level: 7)}
            it 'returns true' do
                expect(subject.hungry?).to eql(true)
            end    
        end

        context 'hungry_level is less or equal to 5' do
            subject {described_class.new(hungry_level: 5)}
            it 'returns false' do
                expect(subject.hungry?).to eql(false)
            end    
        end
    end
end