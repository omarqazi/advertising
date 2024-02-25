require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get root_url
    assert_response :success
    assert_equal "Hello, World!", @response.body
  end
end
