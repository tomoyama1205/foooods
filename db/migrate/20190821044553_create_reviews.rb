class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :rate
      t.text :review
      t.integer :shop_id
      t.integer :user_id
      t.timestamps
    end
  end
end
