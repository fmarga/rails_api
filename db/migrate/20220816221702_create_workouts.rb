class CreateWorkouts < ActiveRecord::Migration[7.0]
  def change
    create_table :workouts do |t|
      t.date :expires

      t.timestamps
    end
  end
end
