# frozen_string_literal: true

class WinesController < ProtectedController
  before_action :set_wine, only: %i[show update destroy]

  # GET /wines
  def index
    @wines = current_user.wines.all

    render json: @wines
  end

  # GET /wines/1
  def show
    render json: @wine
  end

  # POST /wines
  def create
    @wine = current_user.wines.build(wine_params)

    if @wine.save
      render json: @wine, status: :created, location: @wine
    else
      render json: @wine.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /wines/1
  def update
    if @wine.update(wine_params)
      render json: @wine
    else
      render json: @wine.errors, status: :unprocessable_entity
    end
  end

  # DELETE /wines/1
  def destroy
    @wine.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_wine
    @wine = current_user.wines.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def wine_params
    params.require(:wine).permit(:name, :country, :style, :variety, :producer,
                                 :appearance, :aroma, :tasting_notes, :memories,
                                 :user_id)
  end
end
