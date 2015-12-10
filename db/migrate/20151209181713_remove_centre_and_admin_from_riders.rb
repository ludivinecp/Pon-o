class RemoveCentreAndAdminFromRiders < ActiveRecord::Migration
  def change
  	remove_column :riders, :centre
  	remove_column :riders, :admin
  end
end
