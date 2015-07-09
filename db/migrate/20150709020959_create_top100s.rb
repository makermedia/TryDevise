class CreateTop100s < ActiveRecord::Migration
  def change
    create_table :top100s do |t|
      t.integer :user_id, null: false

      t.timestamps null: false
    end
  end
end
