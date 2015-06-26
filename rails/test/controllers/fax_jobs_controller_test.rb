require 'test_helper'

class FaxJobsControllerTest < ActionController::TestCase
  setup do
    @fax_job = fax_jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fax_jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fax_job" do
    assert_difference('FaxJob.count') do
      post :create, fax_job: { fax: @fax_job.fax, file_name: @fax_job.file_name, sender_email: @fax_job.sender_email, sender_name: @fax_job.sender_name }
    end

    assert_redirected_to fax_job_path(assigns(:fax_job))
  end

  test "should show fax_job" do
    get :show, id: @fax_job
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fax_job
    assert_response :success
  end

  test "should update fax_job" do
    patch :update, id: @fax_job, fax_job: { fax: @fax_job.fax, file_name: @fax_job.file_name, sender_email: @fax_job.sender_email, sender_name: @fax_job.sender_name }
    assert_redirected_to fax_job_path(assigns(:fax_job))
  end

  test "should destroy fax_job" do
    assert_difference('FaxJob.count', -1) do
      delete :destroy, id: @fax_job
    end

    assert_redirected_to fax_jobs_path
  end
end
