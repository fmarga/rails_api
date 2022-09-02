class AddLevelToWorkout < ActiveRecord::Migration[7.0]
  def change
    add_reference :workouts, :level, null: true, foreign_key: true
  end
end
