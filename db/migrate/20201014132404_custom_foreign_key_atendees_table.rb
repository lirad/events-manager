class CustomForeignKeyAtendeesTable < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :event_atendees, :users
    remove_column :event_atendees, :user_id
    add_reference :event_atendees, :atendee, references: :users, index:true
    add_foreign_key :event_atendees, :users, column: :atendee_id
  end
end
