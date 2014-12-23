class CompetitionsPitFormsController < ApplicationController
  before_action :set_competitions_pit_form, only: [:show, :edit, :update, :destroy]

  # GET /competitions_pit_forms
  # GET /competitions_pit_forms.json
  def index
    @competitions_pit_forms = CompetitionsPitForm.all
  end

  # GET /competitions_pit_forms/1
  # GET /competitions_pit_forms/1.json
  def show
  end

  # GET /competitions_pit_forms/new
  def new
    @competitions_pit_form = CompetitionsPitForm.new
  end

  # GET /competitions_pit_forms/1/edit
  def edit
  end

  # POST /competitions_pit_forms
  # POST /competitions_pit_forms.json
  def create
    @competitions_pit_form = CompetitionsPitForm.new(competitions_pit_form_params)

    respond_to do |format|
      if @competitions_pit_form.save
        format.html { redirect_to @competitions_pit_form, notice: 'Competitions pit form was successfully created.' }
        format.json { render :show, status: :created, location: @competitions_pit_form }
      else
        format.html { render :new }
        format.json { render json: @competitions_pit_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /competitions_pit_forms/1
  # PATCH/PUT /competitions_pit_forms/1.json
  def update
    respond_to do |format|
      if @competitions_pit_form.update(competitions_pit_form_params)
        format.html { redirect_to @competitions_pit_form, notice: 'Competitions pit form was successfully updated.' }
        format.json { render :show, status: :ok, location: @competitions_pit_form }
      else
        format.html { render :edit }
        format.json { render json: @competitions_pit_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /competitions_pit_forms/1
  # DELETE /competitions_pit_forms/1.json
  def destroy
    @competitions_pit_form.destroy
    respond_to do |format|
      format.html { redirect_to competitions_pit_forms_url, notice: 'Competitions pit form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_competitions_pit_form
      @competitions_pit_form = CompetitionsPitForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def competitions_pit_form_params
      params.require(:competitions_pit_form).permit(:competition_id, :pit_form_id)
    end
end
