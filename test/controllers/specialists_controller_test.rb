require "test_helper"

class SpecialistsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get specialists_index_url
    assert_response :success
  end

  test "should get new" do
    get specialists_new_url
    assert_response :success
  end

  test "should get create" do
    get specialists_create_url
    assert_response :success
  end

  test "should get destroy" do
    get specialists_destroy_url
    assert_response :success
  end
end
