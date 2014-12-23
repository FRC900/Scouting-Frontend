require 'test_helper'

class MatchLineitemsControllerTest < ActionController::TestCase
  setup do
    @match_lineitem = match_lineitems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:match_lineitems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create match_lineitem" do
    assert_difference('MatchLineitem.count') do
      post :create, match_lineitem: { match_form_data_id: @match_lineitem.match_form_data_id, match_form_lineitem_id: @match_lineitem.match_form_lineitem_id }
    end

    assert_redirected_to match_lineitem_path(assigns(:match_lineitem))
  end

  test "should show match_lineitem" do
    get :show, id: @match_lineitem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @match_lineitem
    assert_response :success
  end

  test "should update match_lineitem" do
    patch :update, id: @match_lineitem, match_lineitem: { match_form_data_id: @match_lineitem.match_form_data_id, match_form_lineitem_id: @match_lineitem.match_form_lineitem_id }
    assert_redirected_to match_lineitem_path(assigns(:match_lineitem))
  end

  test "should destroy match_lineitem" do
    assert_difference('MatchLineitem.count', -1) do
      delete :destroy, id: @match_lineitem
    end

    assert_redirected_to match_lineitems_path
  end
end
