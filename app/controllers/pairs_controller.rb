class PairsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_authorization

  def index
    # @user = current_user.pair
    # current_user_pair = get_current_user_pair
  end
  def show
    @pairs = Pairs.all
  end

  # def create
  #   Pair.generate_pairs(params[:day])
  #   redirect_to pairs_path
  # end

end
