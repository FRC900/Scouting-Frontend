class CompetitionsMatchFormsController < ApplicationController
  before_action :set_competitions_match_form, only: [:show, :edit, :update, :destroy]

  # GET /competitions_match_forms
  # GET /competitions_match_forms.json
  def index
    @competitions_match_forms = CompetitionsMatchForm.all
  end

  # GET /competitions_match_forms/1
  # GET /competitions_match_forms/1.json
  def show
  end

  # GET /competitions_match_forms/new
  def new
    @competitions_match_form = CompetitionsMatchForm.new
  end

  # GET /competitions_match_forms/1/edit
  def edit
  end

  # POST /competitions_match_forms
  # POST /competitions_match_forms.json
  def create
    @competitions_match_form = CompetitionsMatchForm.new(competitions_match_form_params)

    respond_to do |format|
      if @competitions_match_form.save
        format.html { redirect_to @competitions_match_form, notice: 'Competitions match form was successfully created.' }
        format.json { render :show, status: :created, location: @competitions_match_form }
      else
        format.html { render :new }
        format.json { render json: @competitions_match_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /competitions_match_forms/1
  # PATCH/PUT /competitions_match_forms/1.json
  def update
    respond_to do |format|
      if @competitions_match_form.update(competitions_match_form_params)
        format.html { redirect_to @competitions_match_form, notice: 'Competitions match form was successfully updated.' }
        format.json { render :show, status: :ok, location: @competitions_match_form }
      else
        format.html { render :edit }
        format.json { render json: @competitions_match_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /competitions_match_forms/1
  # DELETE /competitions_match_forms/1.json
  def destroy
    @competitions_match_form.destroy
    respond_to do |format|
      format.html { redirect_to competitions_match_forms_url, notice: 'Competitions match form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_competitions_match_form
      @competitions_match_form = CompetitionsMatchForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def competitions_match_form_params
      params.require(:competitions_match_form).permit(:competition_id, :match_form_id)
    end
end
