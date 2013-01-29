class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :email, :string
    add_column :users, :dept, :string
    add_column :users, :age, :integer
  end
end
