require "test_helper"

class Public::CosmeticsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_cosmetics_index_url
    assert_response :success
  end

  test "should get edit" do
    get public_cosmetics_edit_url
    assert_response :success
  end

  test "should get show" do
    get public_cosmetics_show_url
    assert_response :success
  end

  test "should get favorite" do
    get public_cosmetics_favorite_url
    assert_response :success
  end
end
