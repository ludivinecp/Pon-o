class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :title
      t.string :category
      t.integer :price
      t.string :description
      t.date :date
      t.datetime :time
      t.integer :number_of_people
      t.references :centre, index: true
  
      t.timestamps null: false
    end
  end
end
