require "test_helper"

class SyndromesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get syndromes_index_url
    assert_response :success
  end

  test "should get new" do
    get syndromes_new_url
    assert_response :success
  end

  test "should get create" do
    get syndromes_create_url
    assert_response :success
  end

  test "should get destroy" do
    get syndromes_destroy_url
    assert_response :success
  end
end
