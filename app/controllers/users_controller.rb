class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    if current_user
      @user = current_user
      @searches = current_user.searches
    else
      redirect_to root_path
      flash[:notice] = 'Sign in or log in to view your dashboard'
    end
  end

  def create
    user = User.new(user_params)
    if user.save
      notice[:success] = 'Account created.'
      session[:user_id] = user.id
      redirect_to dashboard_path
    else
      require "pry"; binding.pry
      notice[:danger] = 'Account creation failed. Try again.'
      render :new
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
