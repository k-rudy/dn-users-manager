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
  
  describe 'GET create' do
    
    context 'when the parameters are valid' do
      
      let(:valid_params) { { user: { name: 'Name' } } }
      
      it 'creates the user' do
        expect { get :create, valid_params }.to change { User.count }
      end
      
      it 'assigns new @users collection' do
        get :create, valid_params
        expect(assigns(:users).size).to eq(1)
      end
      
      it 'renders :index' do
        get :create, valid_params
        expect(response).to render_template('index')
      end
      
      it 'assigns new user as @user' do
        get :create, valid_params
        expect(assigns(:user)).to be_new_record
      end
    end  
    
    context 'when the parameters are invalid' do
      
      let(:invalid_params) { { user: { name: '' } } }
      
      it 'assigns invalid user as @user' do
        get :create, invalid_params
        expect(assigns(:user)).to_not be_valid
      end
    end
  end
end
