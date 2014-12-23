require 'test_helper'

class MatchFormsControllerTest < ActionController::TestCase
  setup do
    @match_form = match_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:match_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create match_form" do
    assert_difference('MatchForm.count') do
      post :create, match_form: { competition_id: @match_form.competition_id, name: @match_form.name }
    end

    assert_redirected_to match_form_path(assigns(:match_form))
  end

  test "should show match_form" do
    get :show, id: @match_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @match_form
    assert_response :success
  end

  test "should update match_form" do
    patch :update, id: @match_form, match_form: { competition_id: @match_form.competition_id, name: @match_form.name }
    assert_redirected_to match_form_path(assigns(:match_form))
  end

  test "should destroy match_form" do
    assert_difference('MatchForm.count', -1) do
      delete :destroy, id: @match_form
    end

    assert_redirected_to match_forms_path
  end
end
