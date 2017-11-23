class UsersController < ApplicationController
before_action :authenticate_user!
before_action :set_authorization

  def index
      @user = current_user.pair
      @current_user_pair = get_current_user_pair(@user)
      @team_member = get_team_member(@current_user_pair)
  end

  def create
    if current_user == !is_admin?
      redirect_to user_index_path
    else
      redirect_to admin_index_path
  end

  private

  def admin?
    current_user.is_admin == true
  end

  def user_params
    params.require(:user, :is_admin)
  end

  def get_current_user_pair(user)
    @pairs.each do |pair|
      if pair.include?(user)
        current_user_pair = pair
      end
    end
    return current_user_pair
  end

  def get_team_member(current_user_pair)
      if current_user_pair[0] == @user
        team_member = current_user_pair[1]
      elsif current_user_pair[1]  == @user
        team_member = current_user_pair[0]
      end
      return team_member
    end

end
