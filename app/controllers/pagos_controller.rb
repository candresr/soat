class PagosController < ApplicationController
  before_action :set_pago, only: [:show, :edit, :update, :destroy]

  # GET /pagos
  def index
    @pagos = Pago.all
  end

  # GET /pagos/1
  def show
  end

  # GET /pagos/new
  def new
    @pago = Pago.new
    @current_user = session[:current_user] 
  end

  # GET /pagos/1/edit
  def edit
  end

  # POST /pagos
  def create
    @pago = Pago.new(pago_params)

    if @pago.save
      redirect_to @pago, notice: 'Pago was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /pagos/1
  def update
    if @pago.update(pago_params)
      redirect_to @pago, notice: 'Pago was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /pagos/1
  def destroy
    @pago.destroy
    redirect_to pagos_url, notice: 'Pago was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pago
      @pago = Pago.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pago_params
      params.require(:pago).permit(:numero_tcd, :nombre_tdc, :fecha_vencimiento, :codigo_seguridad, :numero_coutas, :id_usuario)
    end
end
