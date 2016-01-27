class AddBooleanPaiementToBooking < ActiveRecord::Migration
  def change
        add_column :bookings, :payed, :boolean, default: :false

  end
end
