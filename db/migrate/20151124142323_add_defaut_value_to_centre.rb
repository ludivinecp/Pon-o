class AddDefautValueToCentre < ActiveRecord::Migration
  def change
    change_column :users, :centre, :boolean, :default => false
  end
end
