class ChangePhoneFormatToRider < ActiveRecord::Migration
  def change
    change_column(:riders, :phone, :string)
  end
end
