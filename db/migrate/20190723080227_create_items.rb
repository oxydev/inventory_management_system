class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :asset 
      t.string :asset_code
      t.date :date_of_purchase
      t.integer :user_id
      t.integer :category_id
      t.timestamps
    end
    add_index("items", "user_id")
    add_index("items", "category_id")
  end
end
