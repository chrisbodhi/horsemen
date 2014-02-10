class CreateWarmups < ActiveRecord::Migration
  def up
    create_table :warmups do |t|
      t.string :title
      t.integer :rounds
      t.integer :reps
      t.string :movement
      t.integer :weight
      t.text :description
      t.string :length

      t.timestamps
    end
  end

  def down
    drop_table :warmups
  end
end