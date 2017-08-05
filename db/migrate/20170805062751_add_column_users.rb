class AddColumnUsers < ActiveRecord::Migration[5.1]
  def up
    add_reference :users, :status, foreign_key: true
  end

  def down
    remove_column :users, :status, :int
  end
end
