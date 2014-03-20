require 'spec_helper'

describe 'users/index.html.erb' do
  
  before do
    @user = User.create
    @users = [ @user ]
  end
  
  it 'renders user errors correctly' do
    render
    
    assert_select('.model_errors')
  end
  
  it 'renders flash messages' do
    flash[:error] = 'Test message'
    
    render
    
    assert_select('.flash.alert')
  end
end