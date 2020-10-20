class CustomForeignKeyEvents < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :events, :users
    remove_column :events, :user_id
    add_reference :events, :creator, references: :users, index:true
    add_foreign_key :events, :users, column: :creator_id
  end
end
