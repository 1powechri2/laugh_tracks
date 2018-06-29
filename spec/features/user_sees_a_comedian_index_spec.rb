RSpec.describe 'A visitor' do
  context 'visiting /comedians' do
    it 'sees a list of comedians with age and name' do
      comic = Comedian.create(name: 'Mitch Hedberg', age: 48)

      visit '/comedians'

      expect(page).to have_content('Mitch Hedberg')
    end
  end
end
