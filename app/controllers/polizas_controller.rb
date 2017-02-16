class PolizasController < ApplicationController
  before_action :set_poliza, only: [:show, :edit, :update, :destroy]

  # GET /polizas
  def index
    @polizas = Poliza.all
  end

  # GET /polizas/1
  def show
  end

  # GET /polizas/new
  def new
    @poliza = Poliza.new
  end

  # GET /polizas/1/edit
  def edit
  end

  # POST /polizas
  def create
    @poliza = Poliza.new(poliza_params)

    if @poliza.save
      redirect_to @poliza, notice: 'Poliza was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /polizas/1
  def update
    if @poliza.update(poliza_params)
      redirect_to @poliza, notice: 'Poliza was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /polizas/1
  def destroy
    @poliza.destroy
    redirect_to polizas_url, notice: 'Poliza was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poliza
      @poliza = Poliza.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def poliza_params
      params.require(:poliza).permit(:clase, :subtipo, :años, :numero_pasajero, :cilindraje, :tonelada, :id_usuario, :id_pago, :placa)
    end
end
