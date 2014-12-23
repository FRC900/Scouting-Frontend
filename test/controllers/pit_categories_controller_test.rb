require 'test_helper'

class PitCategoriesControllerTest < ActionController::TestCase
  setup do
    @pit_category = pit_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pit_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pit_category" do
    assert_difference('PitCategory.count') do
      post :create, pit_category: { name: @pit_category.name, pit_form_id: @pit_category.pit_form_id }
    end

    assert_redirected_to pit_category_path(assigns(:pit_category))
  end

  test "should show pit_category" do
    get :show, id: @pit_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pit_category
    assert_response :success
  end

  test "should update pit_category" do
    patch :update, id: @pit_category, pit_category: { name: @pit_category.name, pit_form_id: @pit_category.pit_form_id }
    assert_redirected_to pit_category_path(assigns(:pit_category))
  end

  test "should destroy pit_category" do
    assert_difference('PitCategory.count', -1) do
      delete :destroy, id: @pit_category
    end

    assert_redirected_to pit_categories_path
  end
end
