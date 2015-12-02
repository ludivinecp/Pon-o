class RidersController < ApplicationController
  before_action :authenticate_user!
  before_action :rider_only
  def show
    @rider = Rider.find(params[:id])
  end

  def edit
    @rider = Rider.find(params[:id])
  end

  def update
  end

  def rider_only
    unless Rider.find(current_user.id)
      redirect_to "/", :alert => "Access denied."
    end
  end
end
