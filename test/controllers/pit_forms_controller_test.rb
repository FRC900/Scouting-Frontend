require 'test_helper'

class PitFormsControllerTest < ActionController::TestCase
  setup do
    @pit_form = pit_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pit_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pit_form" do
    assert_difference('PitForm.count') do
      post :create, pit_form: { competition_id: @pit_form.competition_id, name: @pit_form.name }
    end

    assert_redirected_to pit_form_path(assigns(:pit_form))
  end

  test "should show pit_form" do
    get :show, id: @pit_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pit_form
    assert_response :success
  end

  test "should update pit_form" do
    patch :update, id: @pit_form, pit_form: { competition_id: @pit_form.competition_id, name: @pit_form.name }
    assert_redirected_to pit_form_path(assigns(:pit_form))
  end

  test "should destroy pit_form" do
    assert_difference('PitForm.count', -1) do
      delete :destroy, id: @pit_form
    end

    assert_redirected_to pit_forms_path
  end
end
