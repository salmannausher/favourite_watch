class UsersController < ApplicationController
  before_action :authorized, only: [:show]
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @user.save
      redirect_to login_path
    else  
      redirect_to signup_path
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def favourite_watches
    @favorite_watches = current_user.favorite_watches
  end


  private

  def user_params
    params.require(:user).permit(:email, :password,:age, :password_confirmation)
  end
end