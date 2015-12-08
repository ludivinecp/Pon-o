class AddCategoryIdToServices < ActiveRecord::Migration
  def change
          add_reference :services, :categories, index: true, foreign_key: true

  end
end
