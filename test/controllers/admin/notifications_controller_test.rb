require "test_helper"

class Admin::NotificationsControllerTest < ActionDispatch::IntegrationTest
  test "should get notice" do
    get admin_notifications_notice_url
    assert_response :success
  end
end
