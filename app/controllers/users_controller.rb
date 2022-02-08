class UsersController < ApplicationController
  def index
    @users = User.all.order(:id)
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.update(display: 0)
    redirect_to users_path
  end

end
