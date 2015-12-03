class RidersController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_rider!
  def show
    @rider = Rider.find(params[:id])
  end

  def edit
    @rider = Rider.find(params[:id])
  end

  def update
  end

end
