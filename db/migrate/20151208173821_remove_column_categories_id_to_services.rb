class RemoveColumnCategoriesIdToServices < ActiveRecord::Migration
  def change
        remove_column :services, :categories_id
  end
end
