require 'test_helper'

class StoredMaterialsControllerTest < ActionController::TestCase
  setup do
    @stored_material = stored_materials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stored_materials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stored_material" do
    assert_difference('StoredMaterial.count') do
      post :create, stored_material: { description: @stored_material.description, installed_this_cycle: @stored_material.installed_this_cycle, received_this_cycle: @stored_material.received_this_cycle, scope_cycle_id: @stored_material.scope_cycle_id, stored_at_cycle_end: @stored_material.stored_at_cycle_end, stored_at_cycle_start: @stored_material.stored_at_cycle_start }
    end

    assert_redirected_to stored_material_path(assigns(:stored_material))
  end

  test "should show stored_material" do
    get :show, id: @stored_material
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stored_material
    assert_response :success
  end

  test "should update stored_material" do
    patch :update, id: @stored_material, stored_material: { description: @stored_material.description, installed_this_cycle: @stored_material.installed_this_cycle, received_this_cycle: @stored_material.received_this_cycle, scope_cycle_id: @stored_material.scope_cycle_id, stored_at_cycle_end: @stored_material.stored_at_cycle_end, stored_at_cycle_start: @stored_material.stored_at_cycle_start }
    assert_redirected_to stored_material_path(assigns(:stored_material))
  end

  test "should destroy stored_material" do
    assert_difference('StoredMaterial.count', -1) do
      delete :destroy, id: @stored_material
    end

    assert_redirected_to stored_materials_path
  end
end
