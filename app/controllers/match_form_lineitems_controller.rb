class MatchFormLineitemsController < ApplicationController
  before_action :set_match_form_lineitem, only: [:show, :edit, :update, :destroy]

  # GET /match_form_lineitems
  # GET /match_form_lineitems.json
  def index
    @match_form_lineitems = MatchFormLineitem.all
  end

  # GET /match_form_lineitems/1
  # GET /match_form_lineitems/1.json
  def show
  end

  # GET /match_form_lineitems/new
  def new
    @match_form_lineitem = MatchFormLineitem.new
  end

  # GET /match_form_lineitems/1/edit
  def edit
  end

  # POST /match_form_lineitems
  # POST /match_form_lineitems.json
  def create
    @match_form_lineitem = MatchFormLineitem.new(match_form_lineitem_params)

    respond_to do |format|
      if @match_form_lineitem.save
        format.html { redirect_to @match_form_lineitem, notice: 'Match form lineitem was successfully created.' }
        format.json { render :show, status: :created, location: @match_form_lineitem }
      else
        format.html { render :new }
        format.json { render json: @match_form_lineitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /match_form_lineitems/1
  # PATCH/PUT /match_form_lineitems/1.json
  def update
    respond_to do |format|
      if @match_form_lineitem.update(match_form_lineitem_params)
        format.html { redirect_to @match_form_lineitem, notice: 'Match form lineitem was successfully updated.' }
        format.json { render :show, status: :ok, location: @match_form_lineitem }
      else
        format.html { render :edit }
        format.json { render json: @match_form_lineitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /match_form_lineitems/1
  # DELETE /match_form_lineitems/1.json
  def destroy
    @match_form_lineitem.destroy
    respond_to do |format|
      format.html { redirect_to match_form_lineitems_url, notice: 'Match form lineitem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match_form_lineitem
      @match_form_lineitem = MatchFormLineitem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def match_form_lineitem_params
      params.require(:match_form_lineitem).permit(:name, :data_type, :match_category_id, :column_name, :_destroy)
    end
end
