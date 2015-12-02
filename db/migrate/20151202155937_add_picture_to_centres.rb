class AddPictureToCentres < ActiveRecord::Migration
  def change
    add_column :centres, :picture, :string
  end
end
