require 'test_helper'

class DataValuesControllerTest < ActionController::TestCase
  setup do
    @data_value = data_values(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:data_values)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create data_value" do
    assert_difference('DataValue.count') do
      post :create, data_value: { data_id: @data_value.data_id }
    end

    assert_redirected_to data_value_path(assigns(:data_value))
  end

  test "should show data_value" do
    get :show, id: @data_value
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @data_value
    assert_response :success
  end

  test "should update data_value" do
    patch :update, id: @data_value, data_value: { data_id: @data_value.data_id }
    assert_redirected_to data_value_path(assigns(:data_value))
  end

  test "should destroy data_value" do
    assert_difference('DataValue.count', -1) do
      delete :destroy, id: @data_value
    end

    assert_redirected_to data_values_path
  end
end
