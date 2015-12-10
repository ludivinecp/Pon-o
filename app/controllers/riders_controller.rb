class RidersController < ApplicationController
  before_action :check_rider_or_admin_logged_in!, only: [:show, :edit, :update]

  def show
    @rider = Rider.find(params[:id])
  end
  def edit
    @rider = Rider.find(params[:id])
  end

  def new
    @rider = Rider.new
  end

  def create
    @rider = Rider.new(user_params)
      if @rider.save
        redirect_to show_rider_path, notice: 'Rider was successfully created.'
      render :show
      else
      render :edit
      end
  end

  def update
    @rider = Rider.find(params[:id])
    if @rider.update(rider_params)
      redirect_to rider_path(@rider.id), notice: 'Rider was successfully created.'
    else
    render :edit
    end
  end

  def destroy
    @rider.destroy
    respond_to do |format|
      format.html { redirect_to riders_url, notice: ' was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def rider_params
      params[:rider]
      params.require(:rider).permit(:age, :gender, :weight, :tall, :nickname, :level, :centre, :last_name, :first_name, :phone, :address, :user_id )
    end
end
