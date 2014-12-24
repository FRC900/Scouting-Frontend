class PitFormLineitemsController < ApplicationController
  before_action :set_pit_form_lineitem, only: [:show, :edit, :update, :destroy]

  # GET /pit_form_lineitems
  # GET /pit_form_lineitems.json
  def index
    @pit_form_lineitems = PitFormLineitem.all
  end

  # GET /pit_form_lineitems/1
  # GET /pit_form_lineitems/1.json
  def show
  end

  # GET /pit_form_lineitems/new
  def new
    @pit_form_lineitem = PitFormLineitem.new
  end

  # GET /pit_form_lineitems/1/edit
  def edit
  end

  # POST /pit_form_lineitems
  # POST /pit_form_lineitems.json
  def create
    @pit_form_lineitem = PitFormLineitem.new(pit_form_lineitem_params)

    respond_to do |format|
      if @pit_form_lineitem.save
        format.html { redirect_to @pit_form_lineitem, notice: 'Pit form lineitem was successfully created.' }
        format.json { render :show, status: :created, location: @pit_form_lineitem }
      else
        format.html { render :new }
        format.json { render json: @pit_form_lineitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pit_form_lineitems/1
  # PATCH/PUT /pit_form_lineitems/1.json
  def update
    respond_to do |format|
      if @pit_form_lineitem.update(pit_form_lineitem_params)
        format.html { redirect_to @pit_form_lineitem, notice: 'Pit form lineitem was successfully updated.' }
        format.json { render :show, status: :ok, location: @pit_form_lineitem }
      else
        format.html { render :edit }
        format.json { render json: @pit_form_lineitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pit_form_lineitems/1
  # DELETE /pit_form_lineitems/1.json
  def destroy
    @pit_form_lineitem.destroy
    respond_to do |format|
      format.html { redirect_to pit_form_lineitems_url, notice: 'Pit form lineitem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pit_form_lineitem
      @pit_form_lineitem = PitFormLineitem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pit_form_lineitem_params
      params.require(:pit_form_lineitem).permit(:name, :data_type, :pit_category_id, :column_name)
    end
end
