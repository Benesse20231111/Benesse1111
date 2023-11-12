require "test_helper"

class SignUpControllerTest < ActionDispatch::IntegrationTest
  test "should get sign_up" do
    get sign_up_sign_up_url
    assert_response :success
  end
end
