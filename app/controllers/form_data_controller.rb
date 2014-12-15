class FormDataController < ApplicationController
  before_action :set_form_datum, only: [:show, :edit, :update, :destroy]

  # GET /form_data
  # GET /form_data.json
  def index
    @form_data = FormDatum.all
  end

  # GET /form_data/1
  # GET /form_data/1.json
  def show
  end

  # GET /form_data/new
  def new
    @form_datum = FormDatum.new
  end

  # GET /form_data/1/edit
  def edit
  end

  # POST /form_data
  # POST /form_data.json
  def create
    @form_datum = FormDatum.new(form_datum_params)

    respond_to do |format|
      if @form_datum.save
        format.html { redirect_to @form_datum, notice: 'Form datum was successfully created.' }
        format.json { render :show, status: :created, location: @form_datum }
      else
        format.html { render :new }
        format.json { render json: @form_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /form_data/1
  # PATCH/PUT /form_data/1.json
  def update
    respond_to do |format|
      if @form_datum.update(form_datum_params)
        format.html { redirect_to @form_datum, notice: 'Form datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @form_datum }
      else
        format.html { render :edit }
        format.json { render json: @form_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /form_data/1
  # DELETE /form_data/1.json
  def destroy
    @form_datum.destroy
    respond_to do |format|
      format.html { redirect_to form_data_url, notice: 'Form datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_form_datum
      @form_datum = FormDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def form_datum_params
      params.require(:form_datum).permit(:form_id, :match_number, :team_id, :scouter_id, :comments)
    end
end
