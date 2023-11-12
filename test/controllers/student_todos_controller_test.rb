require "test_helper"

class StudentTodosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get student_todos_index_url
    assert_response :success
  end
end
