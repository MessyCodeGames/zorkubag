require "test_helper"

class KgPlayersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kg_players_index_url
    assert_response :success
  end

  test "should get show" do
    get kg_players_show_url
    assert_response :success
  end

  test "should get new" do
    get kg_players_new_url
    assert_response :success
  end

  test "should get create" do
    get kg_players_create_url
    assert_response :success
  end

  test "should get destroy" do
    get kg_players_destroy_url
    assert_response :success
  end

  test "should get update" do
    get kg_players_update_url
    assert_response :success
  end

  test "should get edit" do
    get kg_players_edit_url
    assert_response :success
  end
end
