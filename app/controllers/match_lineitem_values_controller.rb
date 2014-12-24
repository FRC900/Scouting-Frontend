class MatchLineitemValuesController < ApplicationController
  before_action :set_match_lineitem_value, only: [:show, :edit, :update, :destroy]

  # GET /match_lineitem_values
  # GET /match_lineitem_values.json
  def index
    @match_lineitem_values = MatchLineitemValue.all
  end

  # GET /match_lineitem_values/1
  # GET /match_lineitem_values/1.json
  def show
  end

  # GET /match_lineitem_values/new
  def new
    @match_lineitem_value = MatchLineitemValue.new
  end

  # GET /match_lineitem_values/1/edit
  def edit
  end

  # POST /match_lineitem_values
  # POST /match_lineitem_values.json
  def create
    @match_lineitem_value = MatchLineitemValue.new(match_lineitem_value_params)

    respond_to do |format|
      if @match_lineitem_value.save
        format.html { redirect_to @match_lineitem_value, notice: 'Match lineitem value was successfully created.' }
        format.json { render :show, status: :created, location: @match_lineitem_value }
      else
        format.html { render :new }
        format.json { render json: @match_lineitem_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /match_lineitem_values/1
  # PATCH/PUT /match_lineitem_values/1.json
  def update
    respond_to do |format|
      if @match_lineitem_value.update(match_lineitem_value_params)
        format.html { redirect_to @match_lineitem_value, notice: 'Match lineitem value was successfully updated.' }
        format.json { render :show, status: :ok, location: @match_lineitem_value }
      else
        format.html { render :edit }
        format.json { render json: @match_lineitem_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /match_lineitem_values/1
  # DELETE /match_lineitem_values/1.json
  def destroy
    @match_lineitem_value.destroy
    respond_to do |format|
      format.html { redirect_to match_lineitem_values_url, notice: 'Match lineitem value was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match_lineitem_value
      @match_lineitem_value = MatchLineitemValue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def match_lineitem_value_params
      params.require(:match_lineitem_value).permit(:match_lineitem_id, :value)
    end
end
