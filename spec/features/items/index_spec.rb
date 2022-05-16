require 'rails_helper'

RSpec.describe 'items index page' do 
  before :each do 
    @ferrari = Item.create!(name: "Ferrari", category: "Car", quantity: 10)
    @tungsten_bracelet = Item.create!(name: "Tungsten Bracelet", category: "jewelery", quantity: 500)
    @givenchy = Item.create!(name: "Givenchy", category: "cologne", quantity: 150)
    visit "/dashboard/items"
  end 

  describe 'when i visit /dashboard/items' do 
    it 'has a list of all the items' do 
      expect(page).to have_content(@ferrari.name)
      expect(page).to have_content(@tungsten_bracelet.category)
      expect(page).to have_content(@givenchy.quantity)
    end 

    it 'has a link to delete the Item' do
      click_link "Delete #{@ferrari.name}"

      expect(current_path).to eq("/dashboard/items")
      expect(page).to_not have_content(@ferrari.name)
    end
  end 
end 