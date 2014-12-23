require 'test_helper'

class MatchLineitemValuesControllerTest < ActionController::TestCase
  setup do
    @match_lineitem_value = match_lineitem_values(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:match_lineitem_values)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create match_lineitem_value" do
    assert_difference('MatchLineitemValue.count') do
      post :create, match_lineitem_value: { match_form_lineitem_id: @match_lineitem_value.match_form_lineitem_id, value: @match_lineitem_value.value }
    end

    assert_redirected_to match_lineitem_value_path(assigns(:match_lineitem_value))
  end

  test "should show match_lineitem_value" do
    get :show, id: @match_lineitem_value
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @match_lineitem_value
    assert_response :success
  end

  test "should update match_lineitem_value" do
    patch :update, id: @match_lineitem_value, match_lineitem_value: { match_form_lineitem_id: @match_lineitem_value.match_form_lineitem_id, value: @match_lineitem_value.value }
    assert_redirected_to match_lineitem_value_path(assigns(:match_lineitem_value))
  end

  test "should destroy match_lineitem_value" do
    assert_difference('MatchLineitemValue.count', -1) do
      delete :destroy, id: @match_lineitem_value
    end

    assert_redirected_to match_lineitem_values_path
  end
end
