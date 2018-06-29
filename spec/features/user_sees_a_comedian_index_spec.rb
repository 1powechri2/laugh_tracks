RSpec.describe 'A visitor' do
  context 'visiting /comedians' do
    it 'sees a list of comedians with age and name' do
      comic = Comedian.create(name: 'Mitch Hedberg', age: 48)

      visit '/comedians'

      expect(page).to have_content('Mitch Hedberg')
    end
    it "sees a comedian's specials" do
      comic = Comedian.create(name: 'Mitch Hedberg', age: 48)
      special = Special.create(name: 'Hell Yes', comedian_id: 1)

      visit '/comedians'

      expect(page).to have_content('Mitch Hedberg')
      expect(page).to have_content('Hell Yes')
    end
  end
end
