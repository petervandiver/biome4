require 'test_helper'

class ScopeCyclesControllerTest < ActionController::TestCase
  setup do
    @scope_cycle = scope_cycles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scope_cycles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scope_cycle" do
    assert_difference('ScopeCycle.count') do
      post :create, scope_cycle: { amount_due: @scope_cycle.amount_due, billing_period_id: @scope_cycle.billing_period_id, completed_to_date_total: @scope_cycle.completed_to_date_total, contributor_approved: @scope_cycle.contributor_approved, contributor_id: @scope_cycle.contributor_id, cycle_cancelled: @scope_cycle.cycle_cancelled, cycle_end_date: @scope_cycle.cycle_end_date, cycle_start_date: @scope_cycle.cycle_start_date, cycle_suspended: @scope_cycle.cycle_suspended, less_owner_purchases: @scope_cycle.less_owner_purchases, less_previous_pay_request: @scope_cycle.less_previous_pay_request, original_contract_amt: @scope_cycle.original_contract_amt, owner_approved: @scope_cycle.owner_approved, owner_id: @scope_cycle.owner_id, retainage: @scope_cycle.retainage, scope_id: @scope_cycle.scope_id, stored_materials_total: @scope_cycle.stored_materials_total }
    end

    assert_redirected_to scope_cycle_path(assigns(:scope_cycle))
  end

  test "should show scope_cycle" do
    get :show, id: @scope_cycle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scope_cycle
    assert_response :success
  end

  test "should update scope_cycle" do
    patch :update, id: @scope_cycle, scope_cycle: { amount_due: @scope_cycle.amount_due, billing_period_id: @scope_cycle.billing_period_id, completed_to_date_total: @scope_cycle.completed_to_date_total, contributor_approved: @scope_cycle.contributor_approved, contributor_id: @scope_cycle.contributor_id, cycle_cancelled: @scope_cycle.cycle_cancelled, cycle_end_date: @scope_cycle.cycle_end_date, cycle_start_date: @scope_cycle.cycle_start_date, cycle_suspended: @scope_cycle.cycle_suspended, less_owner_purchases: @scope_cycle.less_owner_purchases, less_previous_pay_request: @scope_cycle.less_previous_pay_request, original_contract_amt: @scope_cycle.original_contract_amt, owner_approved: @scope_cycle.owner_approved, owner_id: @scope_cycle.owner_id, retainage: @scope_cycle.retainage, scope_id: @scope_cycle.scope_id, stored_materials_total: @scope_cycle.stored_materials_total }
    assert_redirected_to scope_cycle_path(assigns(:scope_cycle))
  end

  test "should destroy scope_cycle" do
    assert_difference('ScopeCycle.count', -1) do
      delete :destroy, id: @scope_cycle
    end

    assert_redirected_to scope_cycles_path
  end
end
