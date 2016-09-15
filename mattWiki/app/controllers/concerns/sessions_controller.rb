class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by_username(user_params[:username])
    if @user
      if @user.authenticate(user_params[:password])
        session[:user_id] = @user.id
        redirect_to @user
      else
        @errors = ['Username/Password is invalid']
        render 'new'
      end
    else
      @errors = ['Username/Password is invalid']
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  private
  def user_params
    params.require(:session).permit(:username, :password)
  end
end
