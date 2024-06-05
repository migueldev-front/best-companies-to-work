class UsersController < ApplicationController

  def profile
  end

  def index
    @users = User.all
  end

  def show
    @users = User.find(params[:id])
  end

  def new
    @users = User.new
  end

  def create
    @users = User.new(user_params)

    if @users.save
      redirect_to users_path, notice: "User created!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    
  end





  private


  def user_params
    params.require(:user).permit(:username, :address)
  end



end
