class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end
  
  def edit
    @user = User.find(params[:id])
  
  
  end
  
  def create
    @user = User.new(params[:user])

    @user.priviledge='ordinary_user'
    
    if @user.save
      sign_in(@user)
      redirect_to questionares_path
    else  
      render 'new'
    end
  end
end

