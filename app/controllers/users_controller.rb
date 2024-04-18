class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @users = User.find(params[:id])
  end





  private


  def user_params
    params.require(:user).permit(:username, :address, :email)
  end


end
