class AddAttributToUser < ActiveRecord::Migration
  def change
    add_column :users, :contact_no, :integer
  end
end
