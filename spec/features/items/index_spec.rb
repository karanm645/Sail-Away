require 'rails_helper'

RSpec.describe 'items index page' do 
  before :each do 
    @ferrari = Item.create!(name: "Ferrari", type: "car", quantity: 10)
    @tungsten_bracelet = Item.create!(name: "Tungsten Bracelet", type: "jewelery", quantity: 500)
    @givenchy = Item.create!(name: "Givenchy", type: "cologne", quantity: 150)
    visit "/dashboard/items"
  end 

  describe 'when i visit /dashboard/items' do 
    it 'has a list of all the items' do 
      expect(page).to have_content(@ferrari.name)
      expect(page).to have_content(@tungsten_bracelet.type)
      expect(page).to have_content(@givenchy.quantity)
    end 
  end 
end 