class CreateAssets < ActiveRecord::Migration[5.2]
  def change
    create_table :assets do |t|
      t.string :asset_name
      t.string :asset_code
      t.integer :category_id
      t.integer :user_id
      t.datetime :date_of_purchase
      t.timestamps
    end
    add_index("assets", "category_id")
    add_index("assets", "user_id")
  end
end
