class BookingsController < ApplicationController
  before_action :check_rider_or_admin_logged_in!

  def index
    @bookings = Booking.all
  end

  def show
    @service = Service.find(params[:id])
    @centre = Centre.find(params[:id])
    @booking = Booking.find(params[:id])

    # @booking.validation = !@booking.validation
    # if @booking.update(booking_param)
    #   if @booking.validation
    #     message = "Réservation confirmée"
    #   else
    #     message = "Réservation annulée"
    #   end
    #   redirect_to centre_path(@centre), notice: message
    # else
    #   redirect_to centre_path(@centre), method: :get, alert: "Problème : contact l'administrateur)"
    # end

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
       params.require(:booking).permit(:number_of_people, :rider_id, :service_id, :centre_id, :validation)
    end
end
