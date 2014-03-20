require 'spec_helper'

describe User do
  
  describe 'associations' do
    
    it { should belong_to(:role) }
    it { should have_and_belong_to_many(:permissions) }
  end
  
  describe 'validations' do
    it { should validate_presence_of(:name) }
  end
  
  describe '#all_permissions' do
    
    let!(:role) { create(:role) }
    let!(:user) { create(:user, role: role) }
    
    context 'when user has permission' do
      
      let!(:permission) { create(:permission, user: user) }
      
      it 'returns permissions from user' do
        expect(user.all_permissions).to eq([ permission ])
      end
    end
    
    context 'when role has permission' do
      
      let!(:permission) { create(:permission, role: role) }
    
      it 'returns permissions from role' do
        expect(user.all_permissions).to eq([ permission ])
      end
    end
    
    context 'when permission is in both user and role' do
      
      let!(:permission) { create(:permission, user: user, role: role) }
      
      it 'returns one occurence of it' do
        expect(user.all_permissions).to eq([ permission ])
      end
    end
  end
end
