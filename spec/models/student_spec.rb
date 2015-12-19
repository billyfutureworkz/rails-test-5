require 'rails_helper'

RSpec.describe Student, type: :model do
  it_behaves_like "an STI class"

  context 'custom validation' do
    describe 'at_least_18' do 
      before do
        @user = User.new(name: 'student', dob: '19-12-1999', type: 'Student')
      end

      it "should not be valid if dob if less than 18 year olds" do
        @user.valid?
        expect(@user.errors.messages[:dob]).to include('You must be 18 years or older.')
      end
    end
  end
end