require 'test_helper'

class CompetitionsMatchFormsControllerTest < ActionController::TestCase
  setup do
    @competitions_match_form = competitions_match_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:competitions_match_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create competitions_match_form" do
    assert_difference('CompetitionsMatchForm.count') do
      post :create, competitions_match_form: { competition_id: @competitions_match_form.competition_id, match_form_id: @competitions_match_form.match_form_id }
    end

    assert_redirected_to competitions_match_form_path(assigns(:competitions_match_form))
  end

  test "should show competitions_match_form" do
    get :show, id: @competitions_match_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @competitions_match_form
    assert_response :success
  end

  test "should update competitions_match_form" do
    patch :update, id: @competitions_match_form, competitions_match_form: { competition_id: @competitions_match_form.competition_id, match_form_id: @competitions_match_form.match_form_id }
    assert_redirected_to competitions_match_form_path(assigns(:competitions_match_form))
  end

  test "should destroy competitions_match_form" do
    assert_difference('CompetitionsMatchForm.count', -1) do
      delete :destroy, id: @competitions_match_form
    end

    assert_redirected_to competitions_match_forms_path
  end
end
