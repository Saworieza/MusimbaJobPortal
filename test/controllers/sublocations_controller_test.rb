require 'test_helper'

class SublocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sublocation = sublocations(:one)
  end

  test "should get index" do
    get sublocations_url
    assert_response :success
  end

  test "should get new" do
    get new_sublocation_url
    assert_response :success
  end

  test "should create sublocation" do
    assert_difference('Sublocation.count') do
      post sublocations_url, params: { sublocation: { location_id: @sublocation.location_id, name: @sublocation.name } }
    end

    assert_redirected_to sublocation_url(Sublocation.last)
  end

  test "should show sublocation" do
    get sublocation_url(@sublocation)
    assert_response :success
  end

  test "should get edit" do
    get edit_sublocation_url(@sublocation)
    assert_response :success
  end

  test "should update sublocation" do
    patch sublocation_url(@sublocation), params: { sublocation: { location_id: @sublocation.location_id, name: @sublocation.name } }
    assert_redirected_to sublocation_url(@sublocation)
  end

  test "should destroy sublocation" do
    assert_difference('Sublocation.count', -1) do
      delete sublocation_url(@sublocation)
    end

    assert_redirected_to sublocations_url
  end
end
