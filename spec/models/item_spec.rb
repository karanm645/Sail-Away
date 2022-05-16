require "rails_helper"

RSpec.describe Item do 
  describe 'validations' do 
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:category) }
    it { should validate_presence_of(:quantity) }
  end 
end 