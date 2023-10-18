require "test_helper"

class Public::NotificationsControllerTest < ActionDispatch::IntegrationTest
  test "should get notice" do
    get public_notifications_notice_url
    assert_response :success
  end
end
