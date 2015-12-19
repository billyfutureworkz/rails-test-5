require 'rails_helper'

RSpec.describe OfficeWorker, type: :model do
  it_behaves_like "an STI class"

  context 'validation' do 
    it { should validate_presence_of(:year_of_experience) }
    it { should validate_numericality_of(:year_of_experience).is_greater_than_or_equal_to(0) }
  end
end