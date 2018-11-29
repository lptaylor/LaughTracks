RSpec.describe Comedian do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        comic = Comedian.create(age: 48, city: "Denver")
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing an age' do
        comic = Comedian.create(name: 'Mitch Hedberg', city: "Denver")
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing a city' do
        comic = Comedian.create(name: 'John', age: 22)
        expect(comic).to_not be_valid
      end
    end
  end
end
