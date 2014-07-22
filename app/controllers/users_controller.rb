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
    @user = User.new(user_params)
    render nothing: true
    head :bad_request if !@user.save
  end

  def new
    @user = User.new
  end

  def update
    @user = User.find params[:id]
    render nothing: true
    head :bad_request if !@user.update(user_params)
  end

  def destroy
    @user = User.find(users_params)
    @user.destroy
  end

  def user_params
    params.require(:user).permit(:name, :lastname, :phone, :phone_code, :company_id)
  end

end
