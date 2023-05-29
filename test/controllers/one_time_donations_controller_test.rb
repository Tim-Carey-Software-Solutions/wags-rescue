require "test_helper"

class OneTimeDonationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get one_time_donations_new_url
    assert_response :success
  end

  test "should get cancel" do
    get one_time_donations_cancel_url
    assert_response :success
  end

  test "should get success" do
    get one_time_donations_success_url
    assert_response :success
  end
end
