class UsersController < ApplicationController

  def profile
  end

  def index
    @users = User.all
  end


end
