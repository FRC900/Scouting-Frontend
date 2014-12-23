require 'test_helper'

class PitLineitemsControllerTest < ActionController::TestCase
  setup do
    @pit_lineitem = pit_lineitems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pit_lineitems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pit_lineitem" do
    assert_difference('PitLineitem.count') do
      post :create, pit_lineitem: { pit_form_data_id: @pit_lineitem.pit_form_data_id, pit_form_lineitem_id: @pit_lineitem.pit_form_lineitem_id }
    end

    assert_redirected_to pit_lineitem_path(assigns(:pit_lineitem))
  end

  test "should show pit_lineitem" do
    get :show, id: @pit_lineitem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pit_lineitem
    assert_response :success
  end

  test "should update pit_lineitem" do
    patch :update, id: @pit_lineitem, pit_lineitem: { pit_form_data_id: @pit_lineitem.pit_form_data_id, pit_form_lineitem_id: @pit_lineitem.pit_form_lineitem_id }
    assert_redirected_to pit_lineitem_path(assigns(:pit_lineitem))
  end

  test "should destroy pit_lineitem" do
    assert_difference('PitLineitem.count', -1) do
      delete :destroy, id: @pit_lineitem
    end

    assert_redirected_to pit_lineitems_path
  end
end
