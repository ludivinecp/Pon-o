class AddImageToService < ActiveRecord::Migration
  def change
    add_column :services, :image1, :string
    add_column :services, :image2, :string
    add_column :services, :image3, :string
    add_column :services, :image4, :string
  end
end
