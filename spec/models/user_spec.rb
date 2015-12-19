require 'rails_helper'

RSpec.describe User, type: :model do
  context 'association' do 
    it { should belong_to(:school) }
  end
end