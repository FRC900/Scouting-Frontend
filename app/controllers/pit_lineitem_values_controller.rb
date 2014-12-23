class PitLineitemValuesController < ApplicationController
  before_action :set_pit_lineitem_value, only: [:show, :edit, :update, :destroy]

  # GET /pit_lineitem_values
  # GET /pit_lineitem_values.json
  def index
    @pit_lineitem_values = PitLineitemValue.all
  end

  # GET /pit_lineitem_values/1
  # GET /pit_lineitem_values/1.json
  def show
  end

  # GET /pit_lineitem_values/new
  def new
    @pit_lineitem_value = PitLineitemValue.new
  end

  # GET /pit_lineitem_values/1/edit
  def edit
  end

  # POST /pit_lineitem_values
  # POST /pit_lineitem_values.json
  def create
    @pit_lineitem_value = PitLineitemValue.new(pit_lineitem_value_params)

    respond_to do |format|
      if @pit_lineitem_value.save
        format.html { redirect_to @pit_lineitem_value, notice: 'Pit lineitem value was successfully created.' }
        format.json { render :show, status: :created, location: @pit_lineitem_value }
      else
        format.html { render :new }
        format.json { render json: @pit_lineitem_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pit_lineitem_values/1
  # PATCH/PUT /pit_lineitem_values/1.json
  def update
    respond_to do |format|
      if @pit_lineitem_value.update(pit_lineitem_value_params)
        format.html { redirect_to @pit_lineitem_value, notice: 'Pit lineitem value was successfully updated.' }
        format.json { render :show, status: :ok, location: @pit_lineitem_value }
      else
        format.html { render :edit }
        format.json { render json: @pit_lineitem_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pit_lineitem_values/1
  # DELETE /pit_lineitem_values/1.json
  def destroy
    @pit_lineitem_value.destroy
    respond_to do |format|
      format.html { redirect_to pit_lineitem_values_url, notice: 'Pit lineitem value was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pit_lineitem_value
      @pit_lineitem_value = PitLineitemValue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pit_lineitem_value_params
      params.require(:pit_lineitem_value).permit(:pit_form_lineitem_id, :value)
    end
end
