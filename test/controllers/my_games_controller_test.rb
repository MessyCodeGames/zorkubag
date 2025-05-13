require "test_helper"

class MyGamesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get my_games_index_url
    assert_response :success
  end

  test "should get show" do
    get my_games_show_url
    assert_response :success
  end
end
