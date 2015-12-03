class AddBooleanCentreToUsers < ActiveRecord::Migration
  def change
   add_column :users, :centre, :boolean, default: :false

  end
end
