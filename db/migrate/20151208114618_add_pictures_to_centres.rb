class AddPicturesToCentres < ActiveRecord::Migration
  def change
    add_column :centres, :pictures, :json
  end
end
