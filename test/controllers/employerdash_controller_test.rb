require 'test_helper'

class EmployerdashControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get employerdash_index_url
    assert_response :success
  end

end
