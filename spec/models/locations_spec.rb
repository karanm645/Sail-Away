require "rails_helper"

RSpec.describe Location do 
  describe 'validations' do 
    it { should validate_presence_of(:city) }
    it { should validate_presence_of(:state) }
    it { should validate_presence_of(:country) }
  end 

  describe 'relations' do 
    it { should have_many :item_locations }
    it { should have_many(:items).through(:item_locations)}
  end 
end 