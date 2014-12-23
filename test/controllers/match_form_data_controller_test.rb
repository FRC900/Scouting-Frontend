require 'test_helper'

class MatchFormDataControllerTest < ActionController::TestCase
  setup do
    @match_form_datum = match_form_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:match_form_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create match_form_datum" do
    assert_difference('MatchFormDatum.count') do
      post :create, match_form_datum: { competition_team_id: @match_form_datum.competition_team_id, filename: @match_form_datum.filename, form_comments: @match_form_datum.form_comments, match_form_id: @match_form_datum.match_form_id, match_id: @match_form_datum.match_id, notes: @match_form_datum.notes, scouter_id: @match_form_datum.scouter_id }
    end

    assert_redirected_to match_form_datum_path(assigns(:match_form_datum))
  end

  test "should show match_form_datum" do
    get :show, id: @match_form_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @match_form_datum
    assert_response :success
  end

  test "should update match_form_datum" do
    patch :update, id: @match_form_datum, match_form_datum: { competition_team_id: @match_form_datum.competition_team_id, filename: @match_form_datum.filename, form_comments: @match_form_datum.form_comments, match_form_id: @match_form_datum.match_form_id, match_id: @match_form_datum.match_id, notes: @match_form_datum.notes, scouter_id: @match_form_datum.scouter_id }
    assert_redirected_to match_form_datum_path(assigns(:match_form_datum))
  end

  test "should destroy match_form_datum" do
    assert_difference('MatchFormDatum.count', -1) do
      delete :destroy, id: @match_form_datum
    end

    assert_redirected_to match_form_data_path
  end
end
