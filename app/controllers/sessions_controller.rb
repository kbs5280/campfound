class SessionsController < ApplicationController
  def create
    user = User.from_onmiauth(env["omni.auth"])
    session[:user_id] = user.id
    redirect_to root_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
