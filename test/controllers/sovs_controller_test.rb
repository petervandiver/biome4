require 'test_helper'

class SovsControllerTest < ActionController::TestCase
  setup do
    @sov = sovs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sovs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sov" do
    assert_difference('Sov.count') do
      post :create, sov: { scope_cycle_id: @sov.scope_cycle_id }
    end

    assert_redirected_to sov_path(assigns(:sov))
  end

  test "should show sov" do
    get :show, id: @sov
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sov
    assert_response :success
  end

  test "should update sov" do
    patch :update, id: @sov, sov: { scope_cycle_id: @sov.scope_cycle_id }
    assert_redirected_to sov_path(assigns(:sov))
  end

  test "should destroy sov" do
    assert_difference('Sov.count', -1) do
      delete :destroy, id: @sov
    end

    assert_redirected_to sovs_path
  end
end
