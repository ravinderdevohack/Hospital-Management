require "test_helper"

class WardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ward_index_url
    assert_response :success
  end
end
