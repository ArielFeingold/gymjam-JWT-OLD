class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.text :title
      t.text :description
      t.integer :sets, default: 1
      t.float :weight
      t.integer :user_id
      t.integer :workout_id

      t.timestamps
    end
  end
end
