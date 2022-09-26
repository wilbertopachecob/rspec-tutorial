require 'rspec'
require './dog'

describe Dog do
    describe '#bark' do
        it 'returns the string Woof!' do
            dog = Dog.new
            expect(dog.bark).to eql('Woof!')
        end
    end
end