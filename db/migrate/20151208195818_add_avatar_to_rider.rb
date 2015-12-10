class AddAvatarToRider < ActiveRecord::Migration
  def change
    add_column :riders, :avatar, :string
  end
end
