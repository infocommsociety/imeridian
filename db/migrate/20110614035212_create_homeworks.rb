class CreateHomeworks < ActiveRecord::Migration
  def self.up
    create_table :homeworks do |t|
      t.string :content
      t.date :due_date
      t.integer :cg_id
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :homeworks
  end
end
