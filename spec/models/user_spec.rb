require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation' do 
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:year_of_experience) }
    it { should validate_numericality_of(:year_of_experience).is_greater_than_or_equal_to(0) }
  end

  context 'association' do 
    it { should belong_to(:school) }
  end
end