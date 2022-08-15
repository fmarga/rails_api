class ActivitiesController < ApplicationController
  before_action :set_activity, only: %i[show update destroy]

  # GET /activities
  def index
    @activities = Activity.all

    render json: @activities
  end

  # GET /activities/:id
  def show
    render json: @activity
  end

  # POST /activities
  def create
    @activity = Activity.new(activity_params)

    if @activity.save
      render json: @activity, status: :created, location: @activity
    else
      render json: @activity.errors, status: :unprocessable_entity
    end
  end

  # PATCH /activities/:id
  def update
    if @activity.update(activity_params)
      render json: @activity
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
    params.require(:activity).permit(:name, :series, :repeat, :weight)
  end

  def set_activity
    @activity = Activity.find(params[:id])
  end
end
