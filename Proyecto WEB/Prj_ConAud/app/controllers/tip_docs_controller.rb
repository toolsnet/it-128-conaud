class TipDocsController < ApplicationController
  before_action :set_tip_doc, only: [:show, :edit, :update, :destroy]

  # GET /tip_docs
  # GET /tip_docs.json
  def index
    @tip_docs = TipDoc.all
  end

  # GET /tip_docs/1
  # GET /tip_docs/1.json
  def show
  end

  # GET /tip_docs/new
  def new
    @tip_doc = TipDoc.new
  end

  # GET /tip_docs/1/edit
  def edit
  end

  # POST /tip_docs
  # POST /tip_docs.json
  def create
    @tip_doc = TipDoc.new(tip_doc_params)

    respond_to do |format|
      if @tip_doc.save
        format.html { redirect_to @tip_doc, notice: 'Tip doc was successfully created.' }
        format.json { render :show, status: :created, location: @tip_doc }
      else
        format.html { render :new }
        format.json { render json: @tip_doc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tip_docs/1
  # PATCH/PUT /tip_docs/1.json
  def update
    respond_to do |format|
      if @tip_doc.update(tip_doc_params)
        format.html { redirect_to @tip_doc, notice: 'Tip doc was successfully updated.' }
        format.json { render :show, status: :ok, location: @tip_doc }
      else
        format.html { render :edit }
        format.json { render json: @tip_doc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tip_docs/1
  # DELETE /tip_docs/1.json
  def destroy
    @tip_doc.destroy
    respond_to do |format|
      format.html { redirect_to tip_docs_url, notice: 'Tip doc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tip_doc
      @tip_doc = TipDoc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tip_doc_params
      params.require(:tip_doc).permit(:id_tip_doc, :nom_tip_doc)
    end
end
