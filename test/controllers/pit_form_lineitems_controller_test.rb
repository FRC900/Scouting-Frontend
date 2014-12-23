require 'test_helper'

class PitFormLineitemsControllerTest < ActionController::TestCase
  setup do
    @pit_form_lineitem = pit_form_lineitems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pit_form_lineitems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pit_form_lineitem" do
    assert_difference('PitFormLineitem.count') do
      post :create, pit_form_lineitem: { column_name: @pit_form_lineitem.column_name, name: @pit_form_lineitem.name, pit_category_id: @pit_form_lineitem.pit_category_id, type: @pit_form_lineitem.type }
    end

    assert_redirected_to pit_form_lineitem_path(assigns(:pit_form_lineitem))
  end

  test "should show pit_form_lineitem" do
    get :show, id: @pit_form_lineitem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pit_form_lineitem
    assert_response :success
  end

  test "should update pit_form_lineitem" do
    patch :update, id: @pit_form_lineitem, pit_form_lineitem: { column_name: @pit_form_lineitem.column_name, name: @pit_form_lineitem.name, pit_category_id: @pit_form_lineitem.pit_category_id, type: @pit_form_lineitem.type }
    assert_redirected_to pit_form_lineitem_path(assigns(:pit_form_lineitem))
  end

  test "should destroy pit_form_lineitem" do
    assert_difference('PitFormLineitem.count', -1) do
      delete :destroy, id: @pit_form_lineitem
    end

    assert_redirected_to pit_form_lineitems_path
  end
end
