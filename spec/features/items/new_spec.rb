require 'rails_helper'

RSpec.describe "item creation" do 
  before :each do 
    @ferrari = Item.create!(name: "Ferrari", category: "Car", quantity: 10)
    @tungsten_bracelet = Item.create!(name: "Tungsten Bracelet", category: "jewelery", quantity: 500)
    @givenchy = Item.create!(name: "Givenchy", category: "cologne", quantity: 150)
  end 
  describe 'when i visit /dashboard/items' do 
    it 'has a button to create a new item' do 
      visit "/dashboard/items"
      expect(current_path).to eq("/dashboard/items")
      expect(page).to have_button('New Item')
    end 

    it 'can fill out a form' do 
      visit "/dashboard/items"
      click_button 'Create New Item'
      
      visit "/dashboard/items/new"
      
      fill_in(:name, with: 'Roses')
      fill_in(:category, with: 'Plants')
      fill_in(:quantity, with: 25)
      click_button('Create Item')

      expect(current_path).to eq("/dashboard/items")
    end 
  end 
end 