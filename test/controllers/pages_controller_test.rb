require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index path" do
    get root_url
    assert_response :success
    assert_template :index
    assert_template layout: "layouts/home"
  end

  test "should get about us path" do
    get about_us_url
    assert_response :success
    assert_template :aboutus
  end

  test "should get contact path" do
    get contact_us_url
    assert_response :success
    assert_template :contactus
  end

  test "should get donate path" do
    get donate_url
    assert_response :success
    assert_template :donate
  end

  test "should get adopting path" do
    get adopting_url
    assert_response :success
    assert_template :adopting
  end

  test "should get foster path" do
    get foster_url
    assert_response :success
    assert_template :foster
  end

  test "should get our cats path" do
    get our_cats_url
    assert_response :success
    assert_template :ourcats
  end

  test "should get our dogs path" do
    get our_dogs_url
    assert_response :success
    assert_template :ourdogs
  end

  test "should get faq path" do
    get faq_url
    assert_response :success
    assert_template :faq
  end

  test "should get fundraising path" do
    get fundraising_url
    assert_response :success
    assert_template :fundraising
  end

  test "should get volunteer path" do
    get volunteer_url
    assert_response :success
    assert_template :volunteer
  end

  test "should get events path" do
    get events_url
    assert_response :success
    assert_template :events
  end

  test "should get wishlist path" do
    get wishlist_url
    assert_response :success
    assert_template :wishlist
  end

  test "should get wags wiki path" do
    get wags_wiki_url
    assert_response :success
    assert_template :wagswiki
  end

  test "should get amazon smile path" do
    get amazon_smile_url
    assert_response :success
    assert_template :amazonsmile
  end
end
