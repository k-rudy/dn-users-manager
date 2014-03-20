class UsersController < ApplicationController
  
  def index 
    @users = User.all
    @user = User.new
  end
  
  def create
    user = User.create(user_params)
    @users = User.all
    @user = user.valid? ? User.new : user
    render 'index'
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :role_id)
  end
end
