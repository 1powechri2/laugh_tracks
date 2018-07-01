RSpec.describe Comedian do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        comic = Comedian.create(age: 48)
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing an age' do
        comic = Comedian.create(name: 'Mitch Hedberg')
        expect(comic).to_not be_valid
      end

      it 'should be valid if both attributes are present' do

        comic = Comedian.create(name: 'Mitch Hedberg', age: 48)
        expect(comic).to be_valid
      end
    end
  end
  describe 'Class Methods' do
    describe 'find average age' do
      it 'finds average age of all comedians' do
        comic_one = Comedian.create(name: 'Mitch Hedberg', age: 48)
        comic_two = Comedian.create(name: 'My Face', age: 52)

        average_age = Comedian.average_age

        expect(average_age).to eq(50)
      end
    end
  end
end
