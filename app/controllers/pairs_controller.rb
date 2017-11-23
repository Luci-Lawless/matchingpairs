class PairsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_authorization

  def index
    @user = current_user.pair
    current_user_pair = get_current_user_pair
  end
  def show
    @pairs = Pairs.all
  end

  def create
    Pair.generate_pairs(params[:day])
    redirect_to pairs_path
  end

  def remove_all
    Pair.delete_pairs(params[:day])
    redirect_to pairs_path
  end

  def get_current_user_pair(user)
    @pairs.each do |pair|
      if pair.include?(user)
        current_user_pair = pair
      end
    end
    return current_user_pair
  end
end
