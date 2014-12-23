require 'test_helper'

class MatchCategoriesControllerTest < ActionController::TestCase
  setup do
    @match_category = match_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:match_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create match_category" do
    assert_difference('MatchCategory.count') do
      post :create, match_category: { match_form_id: @match_category.match_form_id, name: @match_category.name }
    end

    assert_redirected_to match_category_path(assigns(:match_category))
  end

  test "should show match_category" do
    get :show, id: @match_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @match_category
    assert_response :success
  end

  test "should update match_category" do
    patch :update, id: @match_category, match_category: { match_form_id: @match_category.match_form_id, name: @match_category.name }
    assert_redirected_to match_category_path(assigns(:match_category))
  end

  test "should destroy match_category" do
    assert_difference('MatchCategory.count', -1) do
      delete :destroy, id: @match_category
    end

    assert_redirected_to match_categories_path
  end
end
