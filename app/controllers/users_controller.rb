class UsersController < ApplicationController
  
  def index 
    @users = User.all
    @user = User.new
  end
  
  def create
    user = User.create(user_params)
    if user.valid?
      flash.now[:notice] = 'User created successfully'
      @user = User.new 
    else
      @user = user
    end
    @users = User.all
    
    render 'index', layout: false
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :role_id)
  end
end
