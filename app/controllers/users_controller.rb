class UsersController < ApplicationController
  def new
    @user = User.new
    session[:festival_id] = params[:festival_id]
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
      if session[:festival_id]
        redirect_to festival_path(session[:festival_id])
        notice[:success] = 'Account created!'
        session[:user_id] = user.id
      else
        session[:user_id] = user.id
        redirect_to dashboard_path
        notice[:success] = 'Account created!'
      end
    else
      notice[:danger] = 'Account creation failed. Try again.'
      render :new
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
