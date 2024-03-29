class CompetitionsTeamsController < ApplicationController
  before_action :set_competitions_team, only: [:show, :edit, :update, :destroy]

  # GET /competitions_teams
  # GET /competitions_teams.json
  def index
    @competitions_teams = CompetitionsTeam.all
  end

  # GET /competitions_teams/1
  # GET /competitions_teams/1.json
  def show
  end

  # GET /competitions_teams/new
  def new
    @competitions_team = CompetitionsTeam.new
  end

  # GET /competitions_teams/1/edit
  def edit
  end

  # POST /competitions_teams
  # POST /competitions_teams.json
  def create
    @competitions_team = CompetitionsTeam.new(competitions_team_params)

    respond_to do |format|
      if @competitions_team.save
        format.html { redirect_to @competitions_team, notice: 'Competitions team was successfully created.' }
        format.json { render :show, status: :created, location: @competitions_team }
      else
        format.html { render :new }
        format.json { render json: @competitions_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /competitions_teams/1
  # PATCH/PUT /competitions_teams/1.json
  def update
    respond_to do |format|
      if @competitions_team.update(competitions_team_params)
        format.html { redirect_to @competitions_team, notice: 'Competitions team was successfully updated.' }
        format.json { render :show, status: :ok, location: @competitions_team }
      else
        format.html { render :edit }
        format.json { render json: @competitions_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /competitions_teams/1
  # DELETE /competitions_teams/1.json
  def destroy
    @competitions_team.destroy
    respond_to do |format|
      format.html { redirect_to competitions_teams_url, notice: 'Competitions team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_competitions_team
      @competitions_team = CompetitionsTeam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def competitions_team_params
      params.require(:competitions_team).permit(:competition_id, :team_id)
    end
end
