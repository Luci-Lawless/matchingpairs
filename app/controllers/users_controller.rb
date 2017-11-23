class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_authorization

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id, :is_admin])
  end

  private

  def user_params
    params.permit(:email, :is_admin)
  end
end
