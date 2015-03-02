require 'test_helper'

class SchoolsControllerTest < ActionController::TestCase
  setup do
    @school = schools(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:schools)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create school" do
    assert_difference('School.count') do
      post :create, school: { abbreviation: @school.abbreviation, active: @school.active, building: @school.building, district_id: @school.district_id, email: @school.email, motto: @school.motto, name: @school.name, neighbourhood: @school.neighbourhood, phones: @school.phones, principal: @school.principal, province_id: @school.province_id, school_type_id: @school.school_type_id, street: @school.street, township_id: @school.township_id }
    end

    assert_redirected_to school_path(assigns(:school))
  end

  test "should show school" do
    get :show, id: @school
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @school
    assert_response :success
  end

  test "should update school" do
    patch :update, id: @school, school: { abbreviation: @school.abbreviation, active: @school.active, building: @school.building, district_id: @school.district_id, email: @school.email, motto: @school.motto, name: @school.name, neighbourhood: @school.neighbourhood, phones: @school.phones, principal: @school.principal, province_id: @school.province_id, school_type_id: @school.school_type_id, street: @school.street, township_id: @school.township_id }
    assert_redirected_to school_path(assigns(:school))
  end

  test "should destroy school" do
    assert_difference('School.count', -1) do
      delete :destroy, id: @school
    end

    assert_redirected_to schools_path
  end
end
