require 'spec_helper'

describe User do
  
  describe 'associations' do
    
    it { should belong_to(:role) }
  end
end
