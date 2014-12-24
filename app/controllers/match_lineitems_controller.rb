class MatchLineitemsController < ApplicationController
  before_action :set_match_lineitem, only: [:show, :edit, :update, :destroy]

  # GET /match_lineitems
  # GET /match_lineitems.json
  def index
    @match_lineitems = MatchLineitem.all
  end

  # GET /match_lineitems/1
  # GET /match_lineitems/1.json
  def show
  end

  # GET /match_lineitems/new
  def new
    @match_lineitem = MatchLineitem.new
  end

  # GET /match_lineitems/1/edit
  def edit
  end

  # POST /match_lineitems
  # POST /match_lineitems.json
  def create
    @match_lineitem = MatchLineitem.new(match_lineitem_params)

    respond_to do |format|
      if @match_lineitem.save
        format.html { redirect_to @match_lineitem, notice: 'Match lineitem was successfully created.' }
        format.json { render :show, status: :created, location: @match_lineitem }
      else
        format.html { render :new }
        format.json { render json: @match_lineitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /match_lineitems/1
  # PATCH/PUT /match_lineitems/1.json
  def update
    respond_to do |format|
      if @match_lineitem.update(match_lineitem_params)
        format.html { redirect_to @match_lineitem, notice: 'Match lineitem was successfully updated.' }
        format.json { render :show, status: :ok, location: @match_lineitem }
      else
        format.html { render :edit }
        format.json { render json: @match_lineitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /match_lineitems/1
  # DELETE /match_lineitems/1.json
  def destroy
    @match_lineitem.destroy
    respond_to do |format|
      format.html { redirect_to match_lineitems_url, notice: 'Match lineitem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match_lineitem
      @match_lineitem = MatchLineitem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def match_lineitem_params
      params.require(:match_lineitem).permit(:match_form_lineitem_id, :match_form_datum_id)
    end
end
