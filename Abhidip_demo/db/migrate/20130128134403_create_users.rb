class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :roll
      t.string :dept
      t.integer:age
      t.string :email
      t.string :contact_no
      t.timestamps
    end
  end
end
