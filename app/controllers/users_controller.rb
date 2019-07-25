class UsersController < ApplicationController

  before_action :authenticate_user!
  
  def index
    if !current_user.admin
      redirect_to(user_path(current_user.id))
    end
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])    
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to(user_path(@user))
    else
      render('edit')
    end
  end

  private

  def user_params
    params.require(:user).permit(:user_name, :email)
  end

end
