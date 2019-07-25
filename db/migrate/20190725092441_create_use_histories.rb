class CreateUseHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :use_histories do |t|
      t.string :user
      t.string :asset 
      t.integer :time_of_use
      t.timestamps
    end
  end
end
