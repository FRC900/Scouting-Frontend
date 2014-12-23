class PitLineitemsController < ApplicationController
  before_action :set_pit_lineitem, only: [:show, :edit, :update, :destroy]

  # GET /pit_lineitems
  # GET /pit_lineitems.json
  def index
    @pit_lineitems = PitLineitem.all
  end

  # GET /pit_lineitems/1
  # GET /pit_lineitems/1.json
  def show
  end

  # GET /pit_lineitems/new
  def new
    @pit_lineitem = PitLineitem.new
  end

  # GET /pit_lineitems/1/edit
  def edit
  end

  # POST /pit_lineitems
  # POST /pit_lineitems.json
  def create
    @pit_lineitem = PitLineitem.new(pit_lineitem_params)

    respond_to do |format|
      if @pit_lineitem.save
        format.html { redirect_to @pit_lineitem, notice: 'Pit lineitem was successfully created.' }
        format.json { render :show, status: :created, location: @pit_lineitem }
      else
        format.html { render :new }
        format.json { render json: @pit_lineitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pit_lineitems/1
  # PATCH/PUT /pit_lineitems/1.json
  def update
    respond_to do |format|
      if @pit_lineitem.update(pit_lineitem_params)
        format.html { redirect_to @pit_lineitem, notice: 'Pit lineitem was successfully updated.' }
        format.json { render :show, status: :ok, location: @pit_lineitem }
      else
        format.html { render :edit }
        format.json { render json: @pit_lineitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pit_lineitems/1
  # DELETE /pit_lineitems/1.json
  def destroy
    @pit_lineitem.destroy
    respond_to do |format|
      format.html { redirect_to pit_lineitems_url, notice: 'Pit lineitem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pit_lineitem
      @pit_lineitem = PitLineitem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pit_lineitem_params
      params.require(:pit_lineitem).permit(:pit_form_lineitem_id, :pit_form_data_id)
    end
end
