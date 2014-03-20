require 'spec_helper'

describe UsersController do
  
  describe 'GET index' do
    
    let!(:user) { create(:user) }
    
    it 'assigns the list of users' do
      get :index
      expect(assigns[:users]).to eq([ user ])
    end
    
    it 'assigns new user as @user' do
      get :index
      expect(assigns[:user]).to be_present
    end
  end
end
