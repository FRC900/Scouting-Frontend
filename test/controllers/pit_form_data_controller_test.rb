require 'test_helper'

class PitFormDataControllerTest < ActionController::TestCase
  setup do
    @pit_form_datum = pit_form_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pit_form_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pit_form_datum" do
    assert_difference('PitFormDatum.count') do
      post :create, pit_form_datum: { competition_team_id: @pit_form_datum.competition_team_id, filename: @pit_form_datum.filename, match_id: @pit_form_datum.match_id, notes: @pit_form_datum.notes, pit_form_id: @pit_form_datum.pit_form_id, scouter_id: @pit_form_datum.scouter_id }
    end

    assert_redirected_to pit_form_datum_path(assigns(:pit_form_datum))
  end

  test "should show pit_form_datum" do
    get :show, id: @pit_form_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pit_form_datum
    assert_response :success
  end

  test "should update pit_form_datum" do
    patch :update, id: @pit_form_datum, pit_form_datum: { competition_team_id: @pit_form_datum.competition_team_id, filename: @pit_form_datum.filename, match_id: @pit_form_datum.match_id, notes: @pit_form_datum.notes, pit_form_id: @pit_form_datum.pit_form_id, scouter_id: @pit_form_datum.scouter_id }
    assert_redirected_to pit_form_datum_path(assigns(:pit_form_datum))
  end

  test "should destroy pit_form_datum" do
    assert_difference('PitFormDatum.count', -1) do
      delete :destroy, id: @pit_form_datum
    end

    assert_redirected_to pit_form_data_path
  end
end
