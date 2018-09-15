class AutoridadsController < ApplicationController
  before_action :set_autoridad, only: [:show, :edit, :update, :destroy]

  # GET /autoridad
  # GET /autoridad.json
  def index
    @autoridads = Autoridad.all  
  end

  # GET /autoridads/1
  # GET /autoridads/1.json
  def show
  end

  # GET /autoridads/new
  def new
    @autoridad = Autoridad.new
  end

  # GET /autoridads/1/edit
  def edit
  end

  # POST /autoridads
  # POST /autoridads.json
  def create
    @autoridad = Autoridad.new(autoridad_params)

    respond_to do |format|
      if @autoridad.save
        format.html { redirect_to @autoridad, notice: 'Autoridad was successfully created.' }
        format.json { render :show, status: :created, location: @autoridad }
      else
        format.html { render :new }
        format.json { render json: @autoridad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /autoridads/1
  # PATCH/PUT /autoridads/1.json
  def update
    respond_to do |format|
      if @autoridad.update(autoridad_params)
        format.html { redirect_to @autoridad, notice: 'Autoridad was successfully updated.' }
        format.json { render :show, status: :ok, location: @autoridad }
      else
        format.html { render :edit }
        format.json { render json: @autoridad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /autoridads/1
  # DELETE /autoridads/1.json
  def destroy
    @autoridad.destroy
    respond_to do |format|
      format.html { redirect_to autoridads_url, notice: 'Autoridad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_autoridad
      @autoridad = Autoridad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def autoridad_params
      params.require(:autoridad).permit(:id_aut, :id_tip_doc, :num_doc_aut, :pri_nom_aut, :seg_nom_aut, :pri_ape_aut, :seg_ape_aut, :usu_aut, :pas_aut)
    end
end
