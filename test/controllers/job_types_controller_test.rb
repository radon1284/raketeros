require 'test_helper'

class JobTypesControllerTest < ActionController::TestCase
  setup do
    @job_type = job_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:job_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job_type" do
    assert_difference('JobType.count') do
      post :create, job_type: { job_post_id: @job_type.job_post_id, type_of_jobs: @job_type.type_of_jobs }
    end

    assert_redirected_to job_type_path(assigns(:job_type))
  end

  test "should show job_type" do
    get :show, id: @job_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job_type
    assert_response :success
  end

  test "should update job_type" do
    patch :update, id: @job_type, job_type: { job_post_id: @job_type.job_post_id, type_of_jobs: @job_type.type_of_jobs }
    assert_redirected_to job_type_path(assigns(:job_type))
  end

  test "should destroy job_type" do
    assert_difference('JobType.count', -1) do
      delete :destroy, id: @job_type
    end

    assert_redirected_to job_types_path
  end
end
