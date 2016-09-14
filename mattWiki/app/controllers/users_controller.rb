class UsersController < ApplicationController

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(users_params)
    if @user.save

      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private
  def users_params
    params.require(:user).permit(:username, :email, :first_name, :last_name, :password)
  end
end
