class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.text :title
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
