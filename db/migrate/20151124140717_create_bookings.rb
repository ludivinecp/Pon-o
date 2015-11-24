class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :number_of_people
      t.integer :total_price
      t.references :centre, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
