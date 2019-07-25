class CreateUseRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :use_requests do |t|
      t.string :user
      t.string :asset 
      t.integer :time_of_request
      t.string :status
      t.timestamps
    end
  end
end
