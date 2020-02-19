require 'test_helper'

class HeartResultsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @heart_result = heart_results(:one)
  end

  test "should get index" do
    get heart_results_url
    assert_response :success
  end

  test "should get new" do
    get new_heart_result_url
    assert_response :success
  end

  test "should create heart_result" do
    assert_difference('HeartResult.count') do
      post heart_results_url, params: { heart_result: { heart_program_id: @heart_result.heart_program_id, sick_id: @heart_result.sick_id } }
    end

    assert_redirected_to heart_result_url(HeartResult.last)
  end

  test "should show heart_result" do
    get heart_result_url(@heart_result)
    assert_response :success
  end

  test "should get edit" do
    get edit_heart_result_url(@heart_result)
    assert_response :success
  end

  test "should update heart_result" do
    patch heart_result_url(@heart_result), params: { heart_result: { heart_program_id: @heart_result.heart_program_id, sick_id: @heart_result.sick_id } }
    assert_redirected_to heart_result_url(@heart_result)
  end

  test "should destroy heart_result" do
    assert_difference('HeartResult.count', -1) do
      delete heart_result_url(@heart_result)
    end

    assert_redirected_to heart_results_url
  end
end
