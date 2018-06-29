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
    it "sees a count of all specials for comedians" do
      comic = Comedian.create(name: 'Mitch Hedberg', age: 48)
      special = Special.create(name: 'Hell Yes', comedian_id: 1)
      special = Special.create(name: 'Damn Right', comedian_id: 1)

      visit '/comedians'

      expect(page).to have_content('Mitch Hedberg')
      expect(page).to have_content('Hell Yes')
      expect(page).to have_content(2)
    end
  end
  # context 'visiting /comedians?age=46' do
  #   it 'sees all comedians age 46' do
  #     comic = Comedian.create(name: 'Mitch Hedberg', age: 48)
  #     comic = Comedian.create(name: 'Tina Fey', age: 46)
  #     comic = Comedian.create(name: 'Miss Chuckles', age: 46)
  #
  #     visit '/comedians?age=46'
  #
  #     expect(page).to have_content('Tina Fey')
  #     expect(page).to have_content('Miss Chuckles')
  #     expect(page).to have_content('Mitch Hedberg')
  #   end
  # end
end
