class RemoveColumnFromCategory < ActiveRecord::Migration
  def change
    remove_column :categories, :nature
    remove_column :categories, :exploration
    remove_column :categories, :sport

  end
end
