require 'test_helper'

class JobsControllerTest < ActionController::TestCase
  setup do
    @job = jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job" do
    assert_difference('Job.count') do
      post :create, job: { completed_to_date_percent: @job.completed_to_date_percent, completed_to_date_value: @job.completed_to_date_value, description: @job.description, previous_complete: @job.previous_complete, scope_cycle_id: @job.scope_cycle_id, this_application: @job.this_application, value: @job.value }
    end

    assert_redirected_to job_path(assigns(:job))
  end

  test "should show job" do
    get :show, id: @job
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job
    assert_response :success
  end

  test "should update job" do
    patch :update, id: @job, job: { completed_to_date_percent: @job.completed_to_date_percent, completed_to_date_value: @job.completed_to_date_value, description: @job.description, previous_complete: @job.previous_complete, scope_cycle_id: @job.scope_cycle_id, this_application: @job.this_application, value: @job.value }
    assert_redirected_to job_path(assigns(:job))
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete :destroy, id: @job
    end

    assert_redirected_to jobs_path
  end
end
