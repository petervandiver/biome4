require 'test_helper'

class MaterialLineItemsControllerTest < ActionController::TestCase
  setup do
    @material_line_item = material_line_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:material_line_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create material_line_item" do
    assert_difference('MaterialLineItem.count') do
      post :create, material_line_item: { description: @material_line_item.description, installed_this_cycle: @material_line_item.installed_this_cycle, received_this_cycle: @material_line_item.received_this_cycle, scope_cycle_id: @material_line_item.scope_cycle_id, stored_at_cycle_end: @material_line_item.stored_at_cycle_end, stored_at_cycle_start: @material_line_item.stored_at_cycle_start }
    end

    assert_redirected_to material_line_item_path(assigns(:material_line_item))
  end

  test "should show material_line_item" do
    get :show, id: @material_line_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @material_line_item
    assert_response :success
  end

  test "should update material_line_item" do
    patch :update, id: @material_line_item, material_line_item: { description: @material_line_item.description, installed_this_cycle: @material_line_item.installed_this_cycle, received_this_cycle: @material_line_item.received_this_cycle, scope_cycle_id: @material_line_item.scope_cycle_id, stored_at_cycle_end: @material_line_item.stored_at_cycle_end, stored_at_cycle_start: @material_line_item.stored_at_cycle_start }
    assert_redirected_to material_line_item_path(assigns(:material_line_item))
  end

  test "should destroy material_line_item" do
    assert_difference('MaterialLineItem.count', -1) do
      delete :destroy, id: @material_line_item
    end

    assert_redirected_to material_line_items_path
  end
end
