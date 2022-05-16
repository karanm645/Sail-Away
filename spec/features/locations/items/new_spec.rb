require 'rails_helper'

RSpec.describe "location creation" do 
  before :each do 
    @chicago = Location.create!(city: "Chicago", state: "Illinois", country: "US")
    @sf = Location.create!(city: "San Francisco", state: "California", country: "US")

    @ferrari = @chicago.items.create!(name: "Ferrari", category: "Car", quantity: 10)
    @tungsten_bracelet = @chicago.items.create!(name: "Tungsten Bracelet", category: "jewelery", quantity: 500)

  end 
  describe 'when i visit /dashboard/locations' do 
    it 'has a button to create a new location with items associated to it' do 
      visit "/dashboard/locations"
      expect(current_path).to eq("/dashboard/locations")
      expect(page).to have_button('New Location')
    end 

    it 'can fill out a form' do 
      visit "/dashboard/locations"
      click_button 'New Location'
      
      visit "/dashboard/locations/new"
      
      fill_in(:city, with: 'Houston')
      fill_in(:state, with: 'Texas')
      fill_in(:country, with: "US")
      click_button('Create Location')

      expect(current_path).to eq("/dashboard/locations")
    end 

    it 'has a form to create a new seed' do 
      visit "/dashboard/locations/#{@chicago.id}/items/new"

      fill_in(:name, with: 'Lambo')
      fill_in(:category, with: 'Cars')
      fill_in(:quantity, with: 122)
      click_button('Create Item')

      expect(current_path).to eq("/dashboard/locations/items")

      visit "/dashboard/locations/#{@chicago.id}/items"
      expect(page).to have_content("Lambo")
    end 
  end 
end 