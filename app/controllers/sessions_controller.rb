class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by email: params[:session][:email].downcase
    if user&.authenticate params[:session][:password]
      log_in user
      check_remember user
      redirect_back_or user
    else
      flash[:danger] = t ".flash_login_fail"
      redirect_to root_path
    end
  end

  def destroy
    log_out
    flash[:success] = t ".flash_logout"
    redirect_to root_url
  end

  def check_remember user
    params[:session][:remember_me] == "1" ? remember(user) : forget(user)
  end
end
