class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string :group_name, null: false
      t.string :description

      t.timestamps
    end
  end
end
