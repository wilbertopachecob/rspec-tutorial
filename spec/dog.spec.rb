require 'rspec'
require './dog'

describe Dog do
    describe '#bark' do
        it 'returns the string Woof!' do
            expect(subject.bark).to eql('Woof!')
        end
    end
end