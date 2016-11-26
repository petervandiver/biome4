require 'test_helper'

class DocumentLibrariesControllerTest < ActionController::TestCase
  setup do
    @document_library = document_libraries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:document_libraries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create document_library" do
    assert_difference('DocumentLibrary.count') do
      post :create, document_library: {  }
    end

    assert_redirected_to document_library_path(assigns(:document_library))
  end

  test "should show document_library" do
    get :show, id: @document_library
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @document_library
    assert_response :success
  end

  test "should update document_library" do
    patch :update, id: @document_library, document_library: {  }
    assert_redirected_to document_library_path(assigns(:document_library))
  end

  test "should destroy document_library" do
    assert_difference('DocumentLibrary.count', -1) do
      delete :destroy, id: @document_library
    end

    assert_redirected_to document_libraries_path
  end
end
