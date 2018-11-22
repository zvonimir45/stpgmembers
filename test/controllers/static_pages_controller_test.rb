require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "should get about" do
    get about_path
    assert_response :success
  end

  test "should get contacts" do
    get contacts_path
    assert_response :success
  end

  test "should get help" do
    get help_path
    assert_response :success
  end

  test "should get home" do
    get root_url
    assert_response :success
  end

  test "should get links" do
    get links_path
    assert_response :success
  end

  test "should get sitemap" do
    get sitemap_path
    assert_response :success
  end

  test "should get staff" do
    get staff_path
    assert_response :success
  end

end
