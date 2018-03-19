require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pages_index_url
    assert_response :success
  end

  test "should get myLearning" do
    get pages_myLearning_url
    assert_response :success
  end

  test "should get myLocations" do
    get pages_myLocations_url
    assert_response :success
  end

  test "should get myAppUsage" do
    get pages_myAppUsage_url
    assert_response :success
  end

  test "should get top-nav" do
    get pages_top-nav_url
    assert_response :success
  end

  test "should get side-nav" do
    get pages_side-nav_url
    assert_response :success
  end

end
