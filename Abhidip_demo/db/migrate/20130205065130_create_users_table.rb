class CreateUsersTable < ActiveRecord::Migration
  def up
  create_table :users do |t|
      t.string :name
      t.integer :roll
      t.integer :contact_no
      t.string :email
      t.string :dept
      t.timestamps
  end
 end

  def down
  end
end
