class PitFormsController < ApplicationController
  before_action :set_pit_form, only: [:show, :edit, :update, :destroy]

  # GET /pit_forms
  # GET /pit_forms.json
  def index
    @pit_forms = PitForm.all
  end

  # GET /pit_forms/1
  # GET /pit_forms/1.json
  def show
  end

  # GET /pit_forms/new
  def new
    @pit_form = PitForm.new
  end

  # GET /pit_forms/1/edit
  def edit
  end

  # POST /pit_forms
  # POST /pit_forms.json
  def create
    @pit_form = PitForm.new(pit_form_params)

    respond_to do |format|
      if @pit_form.save
        format.html { redirect_to @pit_form, notice: 'Pit form was successfully created.' }
        format.json { render :show, status: :created, location: @pit_form }
      else
        format.html { render :new }
        format.json { render json: @pit_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pit_forms/1
  # PATCH/PUT /pit_forms/1.json
  def update
    respond_to do |format|
      if @pit_form.update(pit_form_params)
        format.html { redirect_to @pit_form, notice: 'Pit form was successfully updated.' }
        format.json { render :show, status: :ok, location: @pit_form }
      else
        format.html { render :edit }
        format.json { render json: @pit_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pit_forms/1
  # DELETE /pit_forms/1.json
  def destroy
    @pit_form.destroy
    respond_to do |format|
      format.html { redirect_to pit_forms_url, notice: 'Pit form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pit_form
      @pit_form = PitForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pit_form_params
      params.require(:pit_form).permit(:name)
    end
end
