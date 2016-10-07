require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, project: { building_type_id: @project.building_type_id, description: @project.description, end_date: @project.end_date, estimated_spend: @project.estimated_spend, name: @project.name, organization_id: @project.organization_id, project_address: @project.project_address, project_address_zip: @project.project_address_zip, project_number: @project.project_number, square_feet: @project.square_feet, start_date: @project.start_date }
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "should show project" do
    get :show, id: @project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project
    assert_response :success
  end

  test "should update project" do
    patch :update, id: @project, project: { building_type_id: @project.building_type_id, description: @project.description, end_date: @project.end_date, estimated_spend: @project.estimated_spend, name: @project.name, organization_id: @project.organization_id, project_address: @project.project_address, project_address_zip: @project.project_address_zip, project_number: @project.project_number, square_feet: @project.square_feet, start_date: @project.start_date }
    assert_redirected_to project_path(assigns(:project))
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
  end
end
