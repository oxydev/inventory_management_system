class CreateUseRequestHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :use_request_histories do |t|
      t.string :user
      t.string :asset 
      t.integer :time_of_request
      t.string :status
      t.timestamps
      t.timestamps
    end
  end
end
