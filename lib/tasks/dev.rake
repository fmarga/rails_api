namespace :dev do
  desc "Sets up the development environment"
  task setup: :environment do
    p 'Resetting DB'

    %x(rails db:drop db:create db:migrate)

    p 'DB reseted successfully!'
  end
end
