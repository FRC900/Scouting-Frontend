require 'test_helper'

class CompetitionsPitFormsControllerTest < ActionController::TestCase
  setup do
    @competitions_pit_form = competitions_pit_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:competitions_pit_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create competitions_pit_form" do
    assert_difference('CompetitionsPitForm.count') do
      post :create, competitions_pit_form: { competition_id: @competitions_pit_form.competition_id, pit_form_id: @competitions_pit_form.pit_form_id }
    end

    assert_redirected_to competitions_pit_form_path(assigns(:competitions_pit_form))
  end

  test "should show competitions_pit_form" do
    get :show, id: @competitions_pit_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @competitions_pit_form
    assert_response :success
  end

  test "should update competitions_pit_form" do
    patch :update, id: @competitions_pit_form, competitions_pit_form: { competition_id: @competitions_pit_form.competition_id, pit_form_id: @competitions_pit_form.pit_form_id }
    assert_redirected_to competitions_pit_form_path(assigns(:competitions_pit_form))
  end

  test "should destroy competitions_pit_form" do
    assert_difference('CompetitionsPitForm.count', -1) do
      delete :destroy, id: @competitions_pit_form
    end

    assert_redirected_to competitions_pit_forms_path
  end
end
