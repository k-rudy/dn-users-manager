require 'spec_helper'

describe Role do
  
  describe 'associations' do

    it { should have_many(:users) }
    it { should have_and_belong_to_many(:permissions) }
  end
end
