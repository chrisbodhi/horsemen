class UpdateDatatypes < ActiveRecord::Migration
  def change
    change_column :warmups, :weight, :string
    change_column :workouts, :weight, :string
    change_column :warmups, :rounds, :string
    change_column :workouts, :rounds, :string
    change_column :warmups, :reps, :string
    change_column :workouts, :reps, :string
  end
end
