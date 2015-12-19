require 'rails_helper'

RSpec.describe Student, type: :model do
  it_behaves_like "an STI class"

  context 'validation' do 
  end
end