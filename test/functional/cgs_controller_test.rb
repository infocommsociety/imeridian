require 'test_helper'

class CgsControllerTest < ActionController::TestCase
  setup do
    @cg = cgs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cgs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cg" do
    assert_difference('Cg.count') do
      post :create, :cg => @cg.attributes
    end

    assert_redirected_to cg_path(assigns(:cg))
  end

  test "should show cg" do
    get :show, :id => @cg.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @cg.to_param
    assert_response :success
  end

  test "should update cg" do
    put :update, :id => @cg.to_param, :cg => @cg.attributes
    assert_redirected_to cg_path(assigns(:cg))
  end

  test "should destroy cg" do
    assert_difference('Cg.count', -1) do
      delete :destroy, :id => @cg.to_param
    end

    assert_redirected_to cgs_path
  end
end
