require 'test_helper'

class LibraryDocsControllerTest < ActionController::TestCase
  setup do
    @library_doc = library_docs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:library_docs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create library_doc" do
    assert_difference('LibraryDoc.count') do
      post :create, library_doc: { doc: @library_doc.doc, name: @library_doc.name }
    end

    assert_redirected_to library_doc_path(assigns(:library_doc))
  end

  test "should show library_doc" do
    get :show, id: @library_doc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @library_doc
    assert_response :success
  end

  test "should update library_doc" do
    patch :update, id: @library_doc, library_doc: { doc: @library_doc.doc, name: @library_doc.name }
    assert_redirected_to library_doc_path(assigns(:library_doc))
  end

  test "should destroy library_doc" do
    assert_difference('LibraryDoc.count', -1) do
      delete :destroy, id: @library_doc
    end

    assert_redirected_to library_docs_path
  end
end
