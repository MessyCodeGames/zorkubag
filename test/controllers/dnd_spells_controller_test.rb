require "test_helper"

class DndSpellsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get dnd_spells_new_url
    assert_response :success
  end

  test "should get create" do
    get dnd_spells_create_url
    assert_response :success
  end

  test "should get update" do
    get dnd_spells_update_url
    assert_response :success
  end

  test "should get edit" do
    get dnd_spells_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get dnd_spells_destroy_url
    assert_response :success
  end

  test "should get index" do
    get dnd_spells_index_url
    assert_response :success
  end

  test "should get show" do
    get dnd_spells_show_url
    assert_response :success
  end
end
