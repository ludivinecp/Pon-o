class ChangeColumnInUser < ActiveRecord::Migration
  def change
    rename_column :users, :centre, :is_centre
  end
end
