require 'rails_helper'

RSpec.describe School, type: :model do
  context 'validation' do 
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:address) }
    it { should enumerize(:type).in(:university, :high_school, :secondary_school, :primary_school) }
  end

  context 'association' do 
    it { should have_many(:users) }
  end
end