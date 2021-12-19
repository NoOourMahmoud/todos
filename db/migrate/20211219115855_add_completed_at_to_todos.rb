class AddCompletedAtToTodos < ActiveRecord::Migration[6.1]
  def change
    add_column :todos, :completed_at, :timestamp
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
