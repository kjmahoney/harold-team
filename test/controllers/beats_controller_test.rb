require 'test_helper'

class BeatsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get beats_index_url
    assert_response :success
  end

  test "should get show" do
    get beats_show_url
    assert_response :success
  end

  test "should get new" do
    get beats_new_url
    assert_response :success
  end

  test "should get edit" do
    get beats_edit_url
    assert_response :success
  end

end
