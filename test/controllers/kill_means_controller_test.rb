require "test_helper"

class KillMeansControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get kill_means_new_url
    assert_response :success
  end

  test "should get create" do
    get kill_means_create_url
    assert_response :success
  end

  test "should get update" do
    get kill_means_update_url
    assert_response :success
  end

  test "should get edit" do
    get kill_means_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get kill_means_destroy_url
    assert_response :success
  end

  test "should get index" do
    get kill_means_index_url
    assert_response :success
  end

  test "should get show" do
    get kill_means_show_url
    assert_response :success
  end
end
