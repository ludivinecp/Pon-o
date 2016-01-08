class BookingsController < ApplicationController
  # before_action :check_rider_or_admin_logged_in!

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
    @centre = @booking.centre
    @service = @booking.service
  end

  def edit
  end

  def create
    if !!!current_user.rider.first_name.blank? && !!!current_user.rider.last_name.blank? && !!!current_user.rider.phone.blank?  && !!!current_user.rider.level.blank?  && !!!current_user.rider.nickname.blank? 
      @booking = Booking.new(booking_params)
        if @booking.save
          BookingMailer.new_booking(@booking).deliver_now
          redirect_to booking_path(@booking)
        else
          redirect_to service_path(params[:id])
        end
    else 
      redirect_to edit_rider_path(current_user.id), alert: 'Merci de renseigner les champs obligatoires avant de réserver.'
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
 
  def booking_confirmation
    @booking = Booking.find(params[:id])
    @centre = @booking.centre
    @booking.update(validation: true)
    BookingMailer.confirmation_booking(@booking).deliver_now
    redirect_to centre_path(@centre)
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
