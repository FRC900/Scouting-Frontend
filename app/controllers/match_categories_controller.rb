class MatchCategoriesController < ApplicationController
  before_action :set_match_category, only: [:show, :edit, :update, :destroy]

  # GET /match_categories
  # GET /match_categories.json
  def index
    @match_categories = MatchCategory.all
  end

  # GET /match_categories/1
  # GET /match_categories/1.json
  def show
  end

  # GET /match_categories/new
  def new
    @match_category = MatchCategory.new
  end

  # GET /match_categories/1/edit
  def edit
  end

  # POST /match_categories
  # POST /match_categories.json
  def create
    @match_category = MatchCategory.new(match_category_params)

    respond_to do |format|
      if @match_category.save
        format.html { redirect_to @match_category, notice: 'Match category was successfully created.' }
        format.json { render :show, status: :created, location: @match_category }
      else
        format.html { render :new }
        format.json { render json: @match_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /match_categories/1
  # PATCH/PUT /match_categories/1.json
  def update
    respond_to do |format|
      if @match_category.update(match_category_params)
        format.html { redirect_to @match_category, notice: 'Match category was successfully updated.' }
        format.json { render :show, status: :ok, location: @match_category }
      else
        format.html { render :edit }
        format.json { render json: @match_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /match_categories/1
  # DELETE /match_categories/1.json
  def destroy
    @match_category.destroy
    respond_to do |format|
      format.html { redirect_to match_categories_url, notice: 'Match category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match_category
      @match_category = MatchCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def match_category_params
      params.require(:match_category).permit(:name, :match_form_id, match_form_lineitems_attributes: [:name, :data_type, :column_name, :_destroy], :_destroy)
    end
end
