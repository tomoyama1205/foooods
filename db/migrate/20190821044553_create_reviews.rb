class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :rate
      t.text :review
      t.integer :shop_id,    foreign_key: true
      t.integer :user_id,    foreign_key: true
      t.timestamps
    end
  end
end
