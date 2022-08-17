class LevelsController < ApplicationController
  before_action :set_level, only: :show

  def index
    levels = Level.all

    render json: levels.as_json(except: %i[created_at updated_at]), status: :ok
  end

  def show
    if @level
      render json: @level.as_json(except: %i[created_at updated_at]), status: :ok
    else
      return render status: :not_found
    end
  end

  private

  def set_level
    @level = Level.find(params[:id])
  end
end