class ActivitiesController < ApplicationController
  before_action :set_activity, only: %i[show update destroy]

  # GET /activities
  def index
    activities = Activity.all

    render json: activities.as_json(except: %i[created_at updated_at]), status: :ok
  end

  # GET /activities/:id
  def show
    if @activity
      render json: @activity.as_json(except: %i[created_at updated_at]), status: :ok
    else
      return render :not_found
    end
  end

  # POST /activities
  def create
    activity = Activity.new(activity_params)

    if activity.save
      render json: activity.as_json(except: %i[created_at updated_at]), status: :created, location: @activity
    else
      render json: activity.errors, status: :unprocessable_entity
    end
  end

  # PATCH /activities/:id
  def update
    if @activity.update(activity_params)
      render json: @activity.as_json(except: %i[created_at updated_at]), status: :ok
    else
      render json: @activity.errors, status: :unprocessable_entity
    end
  end

  # DELETE /activities/:id
  def destroy
    @activity.destroy
  end

  private

  def activity_params
    params.require(:activity).permit(:id, :name, :series, :repeat, :weight)
  end

  def set_activity
    @activity = Activity.find(params[:id])
  end
end
