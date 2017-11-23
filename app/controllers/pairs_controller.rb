class PairsController < ApplicationController

  def index
    @pairs = Pairs.all
  end
end
