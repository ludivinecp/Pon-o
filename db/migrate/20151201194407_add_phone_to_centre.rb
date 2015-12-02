class AddPhoneToCentre < ActiveRecord::Migration
  def change
    add_column :centres, :phone, :string
  end
end
