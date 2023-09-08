class AddIsDrawedColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :is_drawed, :boolean, after: :email, default: :false
  end
end
