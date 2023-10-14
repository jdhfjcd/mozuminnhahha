require "test_helper"

class MozsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mozs_index_url
    assert_response :success
  end

  test "should get new" do
    get mozs_new_url
    assert_response :success
  end
end
