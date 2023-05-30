require "test_helper"

class FeedHomelessPetsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get feed_homeless_pets_new_url
    assert_response :success
  end
end
