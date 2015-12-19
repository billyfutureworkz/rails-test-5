require 'rails_helper'

RSpec.describe OfficeWorker, type: :model do
  it_behaves_like "an STI class"

  context 'validation' do 
    it { should validate_presence_of(:year_of_experience) }
    it { should validate_numericality_of(:year_of_experience).is_greater_than_or_equal_to(0) }
  end

  context 'custom validation' do
    describe 'at_least_20' do 
      before do
        @user = User.new(name: 'student', dob: '19-12-1999', type: 'OfficeWorker')
      end

      it "should not be valid if dob if less than 18 year olds" do
        @user.valid?
        expect(@user.errors.messages[:dob]).to include('You must be 20 years or older.')
      end
    end
  end
end