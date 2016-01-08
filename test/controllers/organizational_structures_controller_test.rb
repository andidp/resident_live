require 'test_helper'

class OrganizationalStructuresControllerTest < ActionController::TestCase
  setup do
    @organizational_structure = organizational_structures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:organizational_structures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create organizational_structure" do
    assert_difference('OrganizationalStructure.count') do
      post :create, organizational_structure: { created_at: @organizational_structure.created_at, description: @organizational_structure.description, name: @organizational_structure.name, updated_at: @organizational_structure.updated_at }
    end

    assert_redirected_to organizational_structure_path(assigns(:organizational_structure))
  end

  test "should show organizational_structure" do
    get :show, id: @organizational_structure
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @organizational_structure
    assert_response :success
  end

  test "should update organizational_structure" do
    patch :update, id: @organizational_structure, organizational_structure: { created_at: @organizational_structure.created_at, description: @organizational_structure.description, name: @organizational_structure.name, updated_at: @organizational_structure.updated_at }
    assert_redirected_to organizational_structure_path(assigns(:organizational_structure))
  end

  test "should destroy organizational_structure" do
    assert_difference('OrganizationalStructure.count', -1) do
      delete :destroy, id: @organizational_structure
    end

    assert_redirected_to organizational_structures_path
  end
end
