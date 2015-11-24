class CreateCentres < ActiveRecord::Migration
  def change
    create_table :centres do |t|
      t.integer :siret
      t.string :ffe
      t.string :name
      t.belongs_to :user, index: :true

      t.timestamps null: false
    end
  end
end
