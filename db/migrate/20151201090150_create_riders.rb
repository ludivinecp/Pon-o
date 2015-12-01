class CreateRiders < ActiveRecord::Migration
  def change
    create_table :riders do |t|
      t.integer  :age
      t.string   :gender
      t.integer  :weight
      t.integer  :tall
      t.string   :nickname
      t.string   :level
      t.boolean  :centre
      t.string   :last_name      
      t.string   :first_name
      t.integer  :phone
      t.string   :address
      t.boolean :admin, default: :false
      t.references :user, index: :true

      t.timestamps null: false
    end
  end
end
