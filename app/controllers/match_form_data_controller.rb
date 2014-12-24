class MatchFormDataController < ApplicationController
  before_action :set_match_form_datum, only: [:show, :edit, :update, :destroy]

  # GET /match_form_data
  # GET /match_form_data.json
  def index
    @match_form_data = MatchFormDatum.all
  end

  # GET /match_form_data/1
  # GET /match_form_data/1.json
  def show
  end

  # GET /match_form_data/new
  def new
    @match_form_datum = MatchFormDatum.new
  end

  # GET /match_form_data/1/edit
  def edit
  end

  # POST /match_form_data
  # POST /match_form_data.json
  def create
    @match_form_datum = MatchFormDatum.new(match_form_datum_params)

    respond_to do |format|
      if @match_form_datum.save
        format.html { redirect_to @match_form_datum, notice: 'Match form datum was successfully created.' }
        format.json { render :show, status: :created, location: @match_form_datum }
      else
        format.html { render :new }
        format.json { render json: @match_form_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /match_form_data/1
  # PATCH/PUT /match_form_data/1.json
  def update
    respond_to do |format|
      if @match_form_datum.update(match_form_datum_params)
        format.html { redirect_to @match_form_datum, notice: 'Match form datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @match_form_datum }
      else
        format.html { render :edit }
        format.json { render json: @match_form_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /match_form_data/1
  # DELETE /match_form_data/1.json
  def destroy
    @match_form_datum.destroy
    respond_to do |format|
      format.html { redirect_to match_form_data_url, notice: 'Match form datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match_form_datum
      @match_form_datum = MatchFormDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def match_form_datum_params
      params.require(:match_form_datum).permit(:match_form_id, :match_id, :competitions_team_id, :scouter_id, :form_comments, :filename, :notes)
    end
end
