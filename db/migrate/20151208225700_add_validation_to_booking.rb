class AddValidationToBooking < ActiveRecord::Migration
  def change
    add_column :bookings, :validation, :boolean, default: :false

  end
end
