require 'test_helper'

class JobAlertsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_alert = job_alerts(:one)
  end

  test "should get index" do
    get job_alerts_url
    assert_response :success
  end

  test "should get new" do
    get new_job_alert_url
    assert_response :success
  end

  test "should create job_alert" do
    assert_difference('JobAlert.count') do
      post job_alerts_url, params: { job_alert: { email: @job_alert.email, name: @job_alert.name, phone: @job_alert.phone } }
    end

    assert_redirected_to job_alert_url(JobAlert.last)
  end

  test "should show job_alert" do
    get job_alert_url(@job_alert)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_alert_url(@job_alert)
    assert_response :success
  end

  test "should update job_alert" do
    patch job_alert_url(@job_alert), params: { job_alert: { email: @job_alert.email, name: @job_alert.name, phone: @job_alert.phone } }
    assert_redirected_to job_alert_url(@job_alert)
  end

  test "should destroy job_alert" do
    assert_difference('JobAlert.count', -1) do
      delete job_alert_url(@job_alert)
    end

    assert_redirected_to job_alerts_url
  end
end
