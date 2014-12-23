require 'test_helper'

class PitLineitemValuesControllerTest < ActionController::TestCase
  setup do
    @pit_lineitem_value = pit_lineitem_values(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pit_lineitem_values)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pit_lineitem_value" do
    assert_difference('PitLineitemValue.count') do
      post :create, pit_lineitem_value: { pit_form_lineitem_id: @pit_lineitem_value.pit_form_lineitem_id, value: @pit_lineitem_value.value }
    end

    assert_redirected_to pit_lineitem_value_path(assigns(:pit_lineitem_value))
  end

  test "should show pit_lineitem_value" do
    get :show, id: @pit_lineitem_value
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pit_lineitem_value
    assert_response :success
  end

  test "should update pit_lineitem_value" do
    patch :update, id: @pit_lineitem_value, pit_lineitem_value: { pit_form_lineitem_id: @pit_lineitem_value.pit_form_lineitem_id, value: @pit_lineitem_value.value }
    assert_redirected_to pit_lineitem_value_path(assigns(:pit_lineitem_value))
  end

  test "should destroy pit_lineitem_value" do
    assert_difference('PitLineitemValue.count', -1) do
      delete :destroy, id: @pit_lineitem_value
    end

    assert_redirected_to pit_lineitem_values_path
  end
end
