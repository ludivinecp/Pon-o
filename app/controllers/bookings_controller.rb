class BookingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @bookings = Booking.all
  end

  def show
    @service = Service.find(params[:id])
    @centre = Centre.find(params[:id])
    @booking = Booking.find(params[:id])
  end

  def edit
  end

  def create
    @booking = Booking.new(booking_params)

      if @booking.save
        redirect_to booking_path(@booking) 
      else
        redirect_to service_path(params[:id])
      end
  end

  def update
    @service = Service.find(params[:id])
    @centre = Centre.find(params[:id])
    @booking = Booking.new(booking_params)
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to @booking, notice: 'Booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @booking }
      else
        format.html { render :edit }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to bookings_url, notice: 'Booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_booking
      @booking = Booking.find(params[:id])
    end

    def booking_params
       params.require(:booking).permit(:number_of_people, :rider_id, :service_id)
    end
end
