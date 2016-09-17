class SessionsController < ApplicationController
  def create
    @user = find_user || nil
    authenticate_user
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  private

    def find_user
      if request.env['omniauth.auth']
        user = User.find_by(username: request.env['omniauth.auth']['name'])
      else
        user = User.find_by(username: params[:session][:username])
      end
    end

    def authenticate_user
      if params[:session]
        authenticate_with_password
      else
        authenticate_with_google
      end
    end

    def authenticate_with_password
      if @user && @user.authenticate(params[:session][:password])
        session[:user_id] = @user.id
        flash[:success] = "Successfully logged in!"
        redirect_to dashboard
      else
        invalid_login
      end
    end

    def authenticate_with_google
      if @user && request.env['omniauth.auth']['info']
        session[:user_id] = @user.id
        flash[:success] = "Successfully logged in using Google!"
        redirect_to dashboard_path
      else
        invalid_login
      end
    end

    def invalid_login
      flash[:danger] = "Invalid login!"
      render :new
    end
end
