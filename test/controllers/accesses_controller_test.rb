require "test_helper"

class AccessesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get accesses_index_url
    assert_response :success
  end
end
