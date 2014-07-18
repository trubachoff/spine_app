class UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find params[:id]
    render json: @user
  end

  def create
    @user = Company.new params[:user]
    render json: @user
  end

  def new
    @user = User.new
  end

  def update
    @duser = User.find(params[:id])
  end
    
  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

end
