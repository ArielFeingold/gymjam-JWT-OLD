class CreateStats < ActiveRecord::Migration[5.2]
  def change
    create_table :stats do |t|
      t.float :wheight, default: 1
      t.float :bodyfat, default: 1
      t.float :shoulders, default: 1
      t.float :chest, default: 1
      t.float :left_bicep, default: 1
      t.float :right_bicep, default: 1
      t.float :right_thigh, default: 1
      t.float :left_thigh, default: 1
      t.integer :user_id

      t.timestamps
    end
  end
end
