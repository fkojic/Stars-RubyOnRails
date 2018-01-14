require 'test_helper'

class AdminsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_index_url
    assert_response :success
  end

  test "should get report_pictures" do
    get admins_report_pictures_url
    assert_response :success
  end

  test "should get report_users" do
    get admins_report_users_url
    assert_response :success
  end

  test "should get users" do
    get admins_users_url
    assert_response :success
  end

end
