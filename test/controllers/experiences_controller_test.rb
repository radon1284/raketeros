require 'test_helper'

class ExperiencesControllerTest < ActionController::TestCase
  setup do
    @experience = experiences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:experiences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create experience" do
    assert_difference('Experience.count') do
      post :create, experience: { company_description: @experience.company_description, company_image: @experience.company_image, company_name: @experience.company_name, date_ended: @experience.date_ended, date_started: @experience.date_started, profile_id: @experience.profile_id, time_in_service: @experience.time_in_service, work_position: @experience.work_position }
    end

    assert_redirected_to experience_path(assigns(:experience))
  end

  test "should show experience" do
    get :show, id: @experience
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @experience
    assert_response :success
  end

  test "should update experience" do
    patch :update, id: @experience, experience: { company_description: @experience.company_description, company_image: @experience.company_image, company_name: @experience.company_name, date_ended: @experience.date_ended, date_started: @experience.date_started, profile_id: @experience.profile_id, time_in_service: @experience.time_in_service, work_position: @experience.work_position }
    assert_redirected_to experience_path(assigns(:experience))
  end

  test "should destroy experience" do
    assert_difference('Experience.count', -1) do
      delete :destroy, id: @experience
    end

    assert_redirected_to experiences_path
  end
end
