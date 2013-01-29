class DeleteUserTable < ActiveRecord::Migration
  def up
    drop_table :abhis
  end

  def down
  end
end
