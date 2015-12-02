class RidersController < ApplicationController
  before_action :authenticate_user!
  before_filter :rider_only
  def show
    @rider = Rider.find(params[:id])
  end

  def edit
    @rider = Rider.find(params[:id])
  end

  def update
  end
end
