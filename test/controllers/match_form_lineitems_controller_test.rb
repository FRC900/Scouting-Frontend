require 'test_helper'

class MatchFormLineitemsControllerTest < ActionController::TestCase
  setup do
    @match_form_lineitem = match_form_lineitems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:match_form_lineitems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create match_form_lineitem" do
    assert_difference('MatchFormLineitem.count') do
      post :create, match_form_lineitem: { column_name: @match_form_lineitem.column_name, match_category_id: @match_form_lineitem.match_category_id, name: @match_form_lineitem.name, type: @match_form_lineitem.type }
    end

    assert_redirected_to match_form_lineitem_path(assigns(:match_form_lineitem))
  end

  test "should show match_form_lineitem" do
    get :show, id: @match_form_lineitem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @match_form_lineitem
    assert_response :success
  end

  test "should update match_form_lineitem" do
    patch :update, id: @match_form_lineitem, match_form_lineitem: { column_name: @match_form_lineitem.column_name, match_category_id: @match_form_lineitem.match_category_id, name: @match_form_lineitem.name, type: @match_form_lineitem.type }
    assert_redirected_to match_form_lineitem_path(assigns(:match_form_lineitem))
  end

  test "should destroy match_form_lineitem" do
    assert_difference('MatchFormLineitem.count', -1) do
      delete :destroy, id: @match_form_lineitem
    end

    assert_redirected_to match_form_lineitems_path
  end
end
