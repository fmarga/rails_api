namespace :seed do
  desc "Creates default DB to test"
  task basic: :environment do

    p 'Creating workout levels...'

    levels = %w(Beginner Intermediate Advanced)
    levels.each do |level|
      Level.create!(
        level: level
      )
    end

    p 'Workout levels created successfully!'

    ######################################
    
    p 'Creating Workout...'

    workout = Workout.create!(
      expires: 30.day.from_now,
      level_id: Random.rand(3)
    )
    
    p 'Workout created successfully!'

    ######################################

    p 'Creating activities...'

    activities = %w(Lunges Pushups Squats Standing-Overhead-Dumbbell-presses Dumbbell-rows Single-leg-deadlifts Burpees Side-planks Planks Glute-bridge)
    activities.each do |activity|
      Activity.create!(
        name: activity,
        series: Random.rand(3),
        repeat: Random.rand(15),
        weight: Faker::Measurement.metric_weight,
        workout_id: workout.id
      )
    end

    p 'Activities created successfully!'
  end
end
