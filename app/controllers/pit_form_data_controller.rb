class PitFormDataController < ApplicationController
  before_action :set_pit_form_datum, only: [:show, :edit, :update, :destroy]

  # GET /pit_form_data
  # GET /pit_form_data.json
  def index
    @pit_form_data = PitFormDatum.all
  end

  # GET /pit_form_data/1
  # GET /pit_form_data/1.json
  def show
  end

  # GET /pit_form_data/new
  def new
    @pit_form_datum = PitFormDatum.new
  end

  # GET /pit_form_data/1/edit
  def edit
  end

  # POST /pit_form_data
  # POST /pit_form_data.json
  def create
    @pit_form_datum = PitFormDatum.new(pit_form_datum_params)

    respond_to do |format|
      if @pit_form_datum.save
        format.html { redirect_to @pit_form_datum, notice: 'Pit form datum was successfully created.' }
        format.json { render :show, status: :created, location: @pit_form_datum }
      else
        format.html { render :new }
        format.json { render json: @pit_form_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pit_form_data/1
  # PATCH/PUT /pit_form_data/1.json
  def update
    respond_to do |format|
      if @pit_form_datum.update(pit_form_datum_params)
        format.html { redirect_to @pit_form_datum, notice: 'Pit form datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @pit_form_datum }
      else
        format.html { render :edit }
        format.json { render json: @pit_form_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pit_form_data/1
  # DELETE /pit_form_data/1.json
  def destroy
    @pit_form_datum.destroy
    respond_to do |format|
      format.html { redirect_to pit_form_data_url, notice: 'Pit form datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pit_form_datum
      @pit_form_datum = PitFormDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pit_form_datum_params
      params.require(:pit_form_datum).permit(:pit_form_id, :match_id, :competition_team_id, :scouter_id, :filename, :notes)
    end
end
