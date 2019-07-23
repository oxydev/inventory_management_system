class CreateAssets < ActiveRecord::Migration[5.2]
  def change
    create_table :assets do |t|
      t.string :asset_name
      t.string :asset_code
      t.integer :category_id
      t.integer :user_id
      t.timestamps
    end
  end
end
