class PitCategoriesController < ApplicationController
  before_action :set_pit_category, only: [:show, :edit, :update, :destroy]

  # GET /pit_categories
  # GET /pit_categories.json
  def index
    @pit_categories = PitCategory.all
  end

  # GET /pit_categories/1
  # GET /pit_categories/1.json
  def show
  end

  # GET /pit_categories/new
  def new
    @pit_category = PitCategory.new
  end

  # GET /pit_categories/1/edit
  def edit
  end

  # POST /pit_categories
  # POST /pit_categories.json
  def create
    @pit_category = PitCategory.new(pit_category_params)

    respond_to do |format|
      if @pit_category.save
        format.html { redirect_to @pit_category, notice: 'Pit category was successfully created.' }
        format.json { render :show, status: :created, location: @pit_category }
      else
        format.html { render :new }
        format.json { render json: @pit_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pit_categories/1
  # PATCH/PUT /pit_categories/1.json
  def update
    respond_to do |format|
      if @pit_category.update(pit_category_params)
        format.html { redirect_to @pit_category, notice: 'Pit category was successfully updated.' }
        format.json { render :show, status: :ok, location: @pit_category }
      else
        format.html { render :edit }
        format.json { render json: @pit_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pit_categories/1
  # DELETE /pit_categories/1.json
  def destroy
    @pit_category.destroy
    respond_to do |format|
      format.html { redirect_to pit_categories_url, notice: 'Pit category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pit_category
      @pit_category = PitCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pit_category_params
      params.require(:pit_category).permit(:name, :pit_form_id)
    end
end
