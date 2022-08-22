Rails.application.routes.draw do
  namespace :v1 do
    resources :activities, only: %i[index show create update destroy]
    resources :workouts, only: %i[index show create update destroy]
    resources :levels, only: %i[index show]
  end
end
