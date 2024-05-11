require "test_helper"

class BasicControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get basic_index_url
    assert_response :success
  end
end
