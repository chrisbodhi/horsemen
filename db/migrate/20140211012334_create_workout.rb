class CreateWorkout < ActiveRecord::Migration
  def up
    create_table :workouts do |t|
      t.string :category
      t.string :title
      t.integer :rounds
      t.integer :reps
      t.text :movement
      t.integer :weight
      t.text :description
      t.string :length
      t.string :example

      t.timestamps
    end
  end

  def down
    drop_table :workouts
  end
end
