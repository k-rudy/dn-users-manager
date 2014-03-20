require 'spec_helper'

describe Role do
  
  describe 'associations' do

    it { should have_many(:users) }
    it { should have_and_belong_to_many(:permissions) }
  end
  
  describe '#starting_with' do
    
    subject { Role }
    let!(:viewer) { create(:role, name: 'Viewer') }  
    let!(:user_viewer) { create(:role, name: 'User Viewer') }  
    let!(:admin_viewer) { create(:role, name: 'Viewer of Admin') }  
    
    it 'returns all roles whose name starts with parameter' do
      expect(subject.starting_with('View')).to match_array([ viewer, admin_viewer ])
    end
  end
end
