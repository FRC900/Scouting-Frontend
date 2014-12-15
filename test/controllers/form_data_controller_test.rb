require 'test_helper'

class FormDataControllerTest < ActionController::TestCase
  setup do
    @form_datum = form_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:form_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create form_datum" do
    assert_difference('FormDatum.count') do
      post :create, form_datum: { comments: @form_datum.comments, form_id: @form_datum.form_id, match_number: @form_datum.match_number, scouter_id: @form_datum.scouter_id, team_id: @form_datum.team_id }
    end

    assert_redirected_to form_datum_path(assigns(:form_datum))
  end

  test "should show form_datum" do
    get :show, id: @form_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @form_datum
    assert_response :success
  end

  test "should update form_datum" do
    patch :update, id: @form_datum, form_datum: { comments: @form_datum.comments, form_id: @form_datum.form_id, match_number: @form_datum.match_number, scouter_id: @form_datum.scouter_id, team_id: @form_datum.team_id }
    assert_redirected_to form_datum_path(assigns(:form_datum))
  end

  test "should destroy form_datum" do
    assert_difference('FormDatum.count', -1) do
      delete :destroy, id: @form_datum
    end

    assert_redirected_to form_data_path
  end
end
