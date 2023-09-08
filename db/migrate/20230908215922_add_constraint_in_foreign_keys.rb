class AddConstraintInForeignKeys < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :user_groups, :users, foreign_key: true, on_delete: :cascade
    add_foreign_key :user_groups, :groups, foreign_key: true, on_delete: :cascade
  end
end
