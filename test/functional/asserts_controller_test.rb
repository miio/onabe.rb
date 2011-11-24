require 'test_helper'

class AssertsControllerTest < ActionController::TestCase
  setup do
    @assert = asserts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:asserts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assert" do
    assert_difference('Assert.count') do
      post :create, assert: @assert.attributes
    end

    assert_redirected_to assert_path(assigns(:assert))
  end

  test "should show assert" do
    get :show, id: @assert.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assert.to_param
    assert_response :success
  end

  test "should update assert" do
    put :update, id: @assert.to_param, assert: @assert.attributes
    assert_redirected_to assert_path(assigns(:assert))
  end

  test "should destroy assert" do
    assert_difference('Assert.count', -1) do
      delete :destroy, id: @assert.to_param
    end

    assert_redirected_to asserts_path
  end
end
