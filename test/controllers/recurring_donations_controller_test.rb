require "test_helper"

class RecurringDonationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get recurring_donations_new_url
    assert_response :success
  end
end
