namespace :seed do
  desc "Creates default DB to test"
  task basic: :environment do
    p 'Creating activities...'

    activities = %w(Lunges Pushups Squats Standing-Overhead-Dumbbell-presses Dumbbell-rows Single-leg-deadlifts Burpees Side-planks Planks Glute-bridge)
    activities.each do |activity|
      Activity.create!(
        name: activity,
        series: Random.rand(3),
        repeat: Random.rand(15),
        weight: Faker::Measurement.metric_weight
      )
    end

    p 'Activities created successfully!'
  end
end
