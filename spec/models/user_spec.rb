require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation' do 
    it { should validate_presence_of(:name) }
  end

  context 'association' do 
    it { should belong_to(:school) }
  end
end