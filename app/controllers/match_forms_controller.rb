class MatchFormsController < ApplicationController
  before_action :set_match_form, only: [:show, :edit, :update, :destroy]

  # GET /match_forms
  # GET /match_forms.json
  def index
    @match_forms = MatchForm.all
  end

  # GET /match_forms/1
  # GET /match_forms/1.json
  def show
  end

  # GET /match_forms/new
  def new
    @match_form = MatchForm.new
  end

  # GET /match_forms/1/edit
  def edit
  end

  # POST /match_forms
  # POST /match_forms.json
  def create
    @match_form = MatchForm.new(match_form_params)

    respond_to do |format|
      if @match_form.save
        format.html { redirect_to @match_form, notice: 'Match form was successfully created.' }
        format.json { render :show, status: :created, location: @match_form }
      else
        format.html { render :new }
        format.json { render json: @match_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /match_forms/1
  # PATCH/PUT /match_forms/1.json
  def update
    respond_to do |format|
      if @match_form.update(match_form_params)
        format.html { redirect_to @match_form, notice: 'Match form was successfully updated.' }
        format.json { render :show, status: :ok, location: @match_form }
      else
        format.html { render :edit }
        format.json { render json: @match_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /match_forms/1
  # DELETE /match_forms/1.json
  def destroy
    @match_form.destroy
    respond_to do |format|
      format.html { redirect_to match_forms_url, notice: 'Match form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match_form
      @match_form = MatchForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def match_form_params
      params.require(:match_form).permit(:name, match_categories_attributes: [:id, :name,:_destroy, match_form_lineitems_attributes: [:name, :data_type, :column_name, :_destroy]])
    end
end
