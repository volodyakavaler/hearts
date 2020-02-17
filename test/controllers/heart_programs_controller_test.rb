require 'test_helper'

class HeartProgramsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @heart_program = heart_programs(:one)
  end

  test "should get index" do
    get heart_programs_url
    assert_response :success
  end

  test "should get new" do
    get new_heart_program_url
    assert_response :success
  end

  test "should create heart_program" do
    assert_difference('HeartProgram.count') do
      post heart_programs_url, params: { heart_program: { device_id: @heart_program.device_id, sick_id: @heart_program.sick_id } }
    end

    assert_redirected_to heart_program_url(HeartProgram.last)
  end

  test "should show heart_program" do
    get heart_program_url(@heart_program)
    assert_response :success
  end

  test "should get edit" do
    get edit_heart_program_url(@heart_program)
    assert_response :success
  end

  test "should update heart_program" do
    patch heart_program_url(@heart_program), params: { heart_program: { device_id: @heart_program.device_id, sick_id: @heart_program.sick_id } }
    assert_redirected_to heart_program_url(@heart_program)
  end

  test "should destroy heart_program" do
    assert_difference('HeartProgram.count', -1) do
      delete heart_program_url(@heart_program)
    end

    assert_redirected_to heart_programs_url
  end
end
