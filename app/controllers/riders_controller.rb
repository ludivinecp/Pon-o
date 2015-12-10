class RidersController < ApplicationController
  before_action :check_rider_or_admin_logged_in!, only: [:show, :edit, :update]

  def show
    @rider = Rider.find(params[:id])
  end

  def edit
    @rider = Rider.find(params[:id])
  end

  def update
  end

end
