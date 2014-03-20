require 'spec_helper'

describe User do
  
  describe 'associations' do
    
    it { should belong_to(:role) }
    it { should have_and_belong_to_many(:permissions) }
  end
end
