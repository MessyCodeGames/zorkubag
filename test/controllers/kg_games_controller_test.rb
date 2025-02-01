require "test_helper"

class KgGamesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get kg_games_new_url
    assert_response :success
  end

  test "should get create" do
    get kg_games_create_url
    assert_response :success
  end

  test "should get update" do
    get kg_games_update_url
    assert_response :success
  end

  test "should get edit" do
    get kg_games_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get kg_games_destroy_url
    assert_response :success
  end

  test "should get index" do
    get kg_games_index_url
    assert_response :success
  end

  test "should get show" do
    get kg_games_show_url
    assert_response :success
  end
end
