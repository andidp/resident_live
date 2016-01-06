require 'test_helper'

class DuesResidentsControllerTest < ActionController::TestCase
  setup do
    @dues_resident = dues_residents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dues_residents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dues_resident" do
    assert_difference('DuesResident.count') do
      post :create, dues_resident: { amount: @dues_resident.amount, created_at: @dues_resident.created_at, for_date: @dues_resident.for_date, for_month: @dues_resident.for_month, for_week: @dues_resident.for_week, resident_id: @dues_resident.resident_id, type: @dues_resident.type, updated_at: @dues_resident.updated_at, year: @dues_resident.year }
    end

    assert_redirected_to dues_resident_path(assigns(:dues_resident))
  end

  test "should show dues_resident" do
    get :show, id: @dues_resident
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dues_resident
    assert_response :success
  end

  test "should update dues_resident" do
    patch :update, id: @dues_resident, dues_resident: { amount: @dues_resident.amount, created_at: @dues_resident.created_at, for_date: @dues_resident.for_date, for_month: @dues_resident.for_month, for_week: @dues_resident.for_week, resident_id: @dues_resident.resident_id, type: @dues_resident.type, updated_at: @dues_resident.updated_at, year: @dues_resident.year }
    assert_redirected_to dues_resident_path(assigns(:dues_resident))
  end

  test "should destroy dues_resident" do
    assert_difference('DuesResident.count', -1) do
      delete :destroy, id: @dues_resident
    end

    assert_redirected_to dues_residents_path
  end
end
