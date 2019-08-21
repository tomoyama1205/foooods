class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
      t.string :title
      t.text :text
      t.string :regular_holiday
      t.string :phone_number
      t.string :business_hours
      t.string :address
      t.timestamps
    end
  end
end
