class V1::WorkoutsController < ApplicationController
  before_action :set_workout, only: %i[show update destroy]

  def index
    workouts = Workout.all

    render json: workouts.as_json(except: %i[created_at updated_at]), status: :ok
  end

  def show
    if @workout
      render json: @workout.as_json(except: %i[created_at uptated_at]), status: :ok
    else
      return render :not_found
    end
  end

  def create
    workout = Workout.new(workout_params)

    if workout.save
      render json: workout.as_json(except: %i[created_at updated_at]), status: :created, location: workout
    else
      render json: workout.errors, status: :unprocessable_entity
    end
  end

  def update
    if @workout.update(workout_params)
      render json: @workout.as_json(except: %i[created_at updated_ad]), status: :ok
    else
      render json: @workout.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @workout.destroy
  end

  private

  def set_workout
    @workout = Workout.find(params[:id])
  end

  def workout_params
    params.require(:workout).permit(:id, :level_id, :expires)
  end
end