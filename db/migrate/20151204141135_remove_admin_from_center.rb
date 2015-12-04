class RemoveAdminFromCenter < ActiveRecord::Migration
  def change
    remove_column :centres, :admin
  end
end
