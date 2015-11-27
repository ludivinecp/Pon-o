class AddAvatarToCentres < ActiveRecord::Migration
  def change
    add_column :centres, :avatar, :string
  end
end
