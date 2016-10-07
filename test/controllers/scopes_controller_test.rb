require 'test_helper'

class ScopesControllerTest < ActionController::TestCase
  setup do
    @scope = scopes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scopes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scope" do
    assert_difference('Scope.count') do
      post :create, scope: { billing_period_id: @scope.billing_period_id, contributor_id: @scope.contributor_id, csi_division_id: @scope.csi_division_id, description: @scope.description, name: @scope.name, owner_id: @scope.owner_id, project_id: @scope.project_id, send_invite_to: @scope.send_invite_to, sov_used: @scope.sov_used, stored_materials_used: @scope.stored_materials_used, visible_to_public: @scope.visible_to_public }
    end

    assert_redirected_to scope_path(assigns(:scope))
  end

  test "should show scope" do
    get :show, id: @scope
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scope
    assert_response :success
  end

  test "should update scope" do
    patch :update, id: @scope, scope: { billing_period_id: @scope.billing_period_id, contributor_id: @scope.contributor_id, csi_division_id: @scope.csi_division_id, description: @scope.description, name: @scope.name, owner_id: @scope.owner_id, project_id: @scope.project_id, send_invite_to: @scope.send_invite_to, sov_used: @scope.sov_used, stored_materials_used: @scope.stored_materials_used, visible_to_public: @scope.visible_to_public }
    assert_redirected_to scope_path(assigns(:scope))
  end

  test "should destroy scope" do
    assert_difference('Scope.count', -1) do
      delete :destroy, id: @scope
    end

    assert_redirected_to scopes_path
  end
end
