class RidersController < ApplicationController
  def show
    @rider = Rider.find(params[:id])
  end

  def edit
    @rider = Rider.find(params[:id])
  end

  def update
  end
end
