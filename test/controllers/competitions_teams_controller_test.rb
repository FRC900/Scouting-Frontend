require 'test_helper'

class CompetitionsTeamsControllerTest < ActionController::TestCase
  setup do
    @competitions_team = competitions_teams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:competitions_teams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create competitions_team" do
    assert_difference('CompetitionsTeam.count') do
      post :create, competitions_team: { competition_id: @competitions_team.competition_id, team_id: @competitions_team.team_id }
    end

    assert_redirected_to competitions_team_path(assigns(:competitions_team))
  end

  test "should show competitions_team" do
    get :show, id: @competitions_team
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @competitions_team
    assert_response :success
  end

  test "should update competitions_team" do
    patch :update, id: @competitions_team, competitions_team: { competition_id: @competitions_team.competition_id, team_id: @competitions_team.team_id }
    assert_redirected_to competitions_team_path(assigns(:competitions_team))
  end

  test "should destroy competitions_team" do
    assert_difference('CompetitionsTeam.count', -1) do
      delete :destroy, id: @competitions_team
    end

    assert_redirected_to competitions_teams_path
  end
end
