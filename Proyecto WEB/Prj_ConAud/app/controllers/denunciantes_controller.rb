class DenunciantesController < ApplicationController
  before_action :set_denunciante, only: [:show, :edit, :update, :destroy]

  # GET /denunciantes
  # GET /denunciantes.json
  def index
    @denunciantes = Denunciante.all
  end

  # GET /denunciantes/1
  # GET /denunciantes/1.json
  def show
  end

  # GET /denunciantes/new
  def new
    @denunciante = Denunciante.new
  end

  # GET /denunciantes/1/edit
  def edit
  end

  # POST /denunciantes
  # POST /denunciantes.json
  def create
    @denunciante = Denunciante.new(denunciante_params)

    respond_to do |format|
      if @denunciante.save
        format.html { redirect_to @denunciante, notice: 'Denunciante was successfully created.' }
        format.json { render :show, status: :created, location: @denunciante }
      else
        format.html { render :new }
        format.json { render json: @denunciante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /denunciantes/1
  # PATCH/PUT /denunciantes/1.json
  def update
    respond_to do |format|
      if @denunciante.update(denunciante_params)
        format.html { redirect_to @denunciante, notice: 'Denunciante was successfully updated.' }
        format.json { render :show, status: :ok, location: @denunciante }
      else
        format.html { render :edit }
        format.json { render json: @denunciante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /denunciantes/1
  # DELETE /denunciantes/1.json
  def destroy
    @denunciante.destroy
    respond_to do |format|
      format.html { redirect_to denunciantes_url, notice: 'Denunciante was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_denunciante
      @denunciante = Denunciante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def denunciante_params
      params.require(:denunciante).permit(:id_usu_den)
    end
end
