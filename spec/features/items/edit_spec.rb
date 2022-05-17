require 'rails_helper'

RSpec.describe 'item editing capability' do
  before :each do
    @ferrari = Item.create!(name: "Ferrari", category: "Car", quantity: 10)
    visit "/dashboard/items"
  end
  it 'has an update button' do
    click_link "Update #{@ferrari.name}"
    
    expect(current_path).to eq("/dashboard/items/#{@ferrari.id}/edit")
  end

  it 'can edit the item' do
    visit "/dashboard/items/#{@ferrari.id}/edit"
    fill_in(:name, with: "Lamborghini")
    fill_in(:category, with: 'false')
    fill_in(:quantity, with: 20)
    click_button('Update Item')

    expect(current_path).to eq("/dashboard/items")
    expect(page).to have_content("Lamborghini")
    expect(page).to_not have_content("Ferrari")
  end
end