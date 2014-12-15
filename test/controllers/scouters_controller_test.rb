require 'test_helper'

class ScoutersControllerTest < ActionController::TestCase
  setup do
    @scouter = scouters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scouters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scouter" do
    assert_difference('Scouter.count') do
      post :create, scouter: { name: @scouter.name, number: @scouter.number }
    end

    assert_redirected_to scouter_path(assigns(:scouter))
  end

  test "should show scouter" do
    get :show, id: @scouter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scouter
    assert_response :success
  end

  test "should update scouter" do
    patch :update, id: @scouter, scouter: { name: @scouter.name, number: @scouter.number }
    assert_redirected_to scouter_path(assigns(:scouter))
  end

  test "should destroy scouter" do
    assert_difference('Scouter.count', -1) do
      delete :destroy, id: @scouter
    end

    assert_redirected_to scouters_path
  end
end
