class UnidadeSaudesController < ApplicationController
  before_action :set_unidade_saude, only: [:show, :update, :destroy]

  # GET /unidade_saudes
  def index
    @unidade_saudes = UnidadeSaude.all

    render json: @unidade_saudes
  end

  # GET /unidade_saudes/1
  def show
    render json: @unidade_saude
  end

  # POST /unidade_saudes
  def create
    @unidade_saude = UnidadeSaude.new(unidade_saude_params)

    if @unidade_saude.save
      render json: @unidade_saude, status: :created, location: @unidade_saude
    else
      render json: @unidade_saude.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /unidade_saudes/1
  def update
    if @unidade_saude.update(unidade_saude_params)
      render json: @unidade_saude
    else
      render json: @unidade_saude.errors, status: :unprocessable_entity
    end
  end

  # DELETE /unidade_saudes/1
  def destroy
    @unidade_saude.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unidade_saude
      @unidade_saude = UnidadeSaude.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def unidade_saude_params
      params.require(:unidade_saude).permit(:tipo, :setorAtentimento)
    end
end
