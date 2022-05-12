require "test_helper"

class TokoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get toko_index_url
    assert_response :success
  end
end
