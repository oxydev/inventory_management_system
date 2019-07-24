class CreateItemsUsersJoin < ActiveRecord::Migration[5.2]
  def change
    create_table :items_users, id:false do |t|
      t.belongs_to :user , index: true
      t.belongs_to :item, index:true
    end
  end
end
