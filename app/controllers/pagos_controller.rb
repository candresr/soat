class PagosController < ApplicationController
  before_action :set_pago, only: [:show, :edit, :update, :destroy]

  # GET /pagos
  def index
    @pagos = Pago.all
  end

  def resumen
    @resumen = Usuario.joins(:polizas,:pagos).find(params[:id])
    @poliza = Poliza.joins(:tarifa).find(params[:id])
    UsuarioCorreo.resumenCorreo(@resumen, @poliza).deliver_now
  end

  def resumenPdf
    @resumen = Usuario.joins(:polizas,:pagos).find(params[:id])
    @poliza = Poliza.joins(:tarifa).find(params[:id])
    respond_to do |format|
        format.html
        format.pdf do
        @pdf = render_to_string :pdf => 'resumen', :template => 'pagos/resumen.html.slim', :encoding => 'UTF-8'
        send_data(@pdf, :filename => 'resumen',  :type=>'application/pdf')
      end
    end
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
    id = pago_params[:usuario_id] 
    @pago = Pago.new(pago_params)
    polizaUsuario = Poliza.find_by usuario_id: id
   
    if @pago.save
      polizaUsuario.pago_id = @pago.id
      polizaUsuario.tarifa_id = polizaUsuario.subtipo
      polizaUsuario.save
      redirect_to :action => 'resumen', :id => id
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
      params.require(:pago).permit(:numero_tcd, :nombre_tdc, :fecha_vencimiento, :codigo_seguridad, :numero_coutas, :usuario_id)
    end
end
