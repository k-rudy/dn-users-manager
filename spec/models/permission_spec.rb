require 'spec_helper'

describe Permission do
  
  describe 'associations' do
    
    it { should have_and_belong_to_many(:users) }
    it { should have_and_belong_to_many(:roles) }
  end
end
