class CreatePurchaserequests < ActiveRecord::Migration[5.2]
  def change
    create_table :purchaserequests do |t|
      t.string :asset
      t.float :price
      t.text :link
      t.text :description
      t.integer :user_id
      t.integer :status
      t.timestamps
    end
    add_index("purchaserequests", "user_id")
  end
end
