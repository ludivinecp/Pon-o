class AddPictureToCentre < ActiveRecord::Migration
  def change
    add_column :centres, :picture1, :string
    add_column :centres, :picture2, :string
    add_column :centres, :picture3, :string
    add_column :centres, :picture4, :string
  end
end
