class UsersController < ApplicationController
  before_action :find_user, only: %i(show edit update destroy)
  before_action :correct_user, only: %i(edit update)

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:success] = t ".flash_signup"
      redirect_to root_url
    else
      render :new
    end
  end

  def show; end

  private

  def find_user
    @user = User.find_by id: params[:id]
    return if @user
    flash[:danger] = t "users.flash_user_notfound"
    redirect_to users_path
  end

  def user_params
    params.require(:user).permit :name, :email, :password,
      :password_confirmation
  end
end
