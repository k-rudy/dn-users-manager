require 'spec_helper'

describe Role do
  
  describe 'associations' do
    
    it { should have_many(:users) }
  end
end
