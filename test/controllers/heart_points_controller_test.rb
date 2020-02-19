require 'test_helper'

class HeartPointsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @heart_point = heart_points(:one)
  end

  test "should get index" do
    get heart_points_url
    assert_response :success
  end

  test "should get new" do
    get new_heart_point_url
    assert_response :success
  end

  test "should create heart_point" do
    assert_difference('HeartPoint.count') do
      post heart_points_url, params: { heart_point: { heart_result_id: @heart_point.heart_result_id, x: @heart_point.x, y: @heart_point.y } }
    end

    assert_redirected_to heart_point_url(HeartPoint.last)
  end

  test "should show heart_point" do
    get heart_point_url(@heart_point)
    assert_response :success
  end

  test "should get edit" do
    get edit_heart_point_url(@heart_point)
    assert_response :success
  end

  test "should update heart_point" do
    patch heart_point_url(@heart_point), params: { heart_point: { heart_result_id: @heart_point.heart_result_id, x: @heart_point.x, y: @heart_point.y } }
    assert_redirected_to heart_point_url(@heart_point)
  end

  test "should destroy heart_point" do
    assert_difference('HeartPoint.count', -1) do
      delete heart_point_url(@heart_point)
    end

    assert_redirected_to heart_points_url
  end
end
