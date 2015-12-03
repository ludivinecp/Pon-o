class AddRiderIdToBooking < ActiveRecord::Migration
  def change
      add_reference :bookings, :rider, index: true, foreign_key: true
  end
end
