class AddServiceIdToBooking < ActiveRecord::Migration
  def change
  add_reference :bookings, :service, index: true, foreign_key: true

  end
end
