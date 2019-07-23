require 'test_helper'

class TypeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get type_index_url
    assert_response :success
  end

  test "should get show" do
    get type_show_url
    assert_response :success
  end

  test "should get new" do
    get type_new_url
    assert_response :success
  end

  test "should get create" do
    get type_create_url
    assert_response :success
  end

  test "should get deleteedit" do
    get type_deleteedit_url
    assert_response :success
  end

  test "should get update" do
    get type_update_url
    assert_response :success
  end

end
