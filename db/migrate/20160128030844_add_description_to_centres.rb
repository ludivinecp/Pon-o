class AddDescriptionToCentres < ActiveRecord::Migration
  def change
    add_column :centres, :description, :text
  end
end
