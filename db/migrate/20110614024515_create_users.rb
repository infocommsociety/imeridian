class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :fullname
      t.string :name
      t.integer :cg_id
      t.string :password
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
