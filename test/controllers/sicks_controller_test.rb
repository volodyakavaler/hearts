require 'test_helper'

class SicksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sick = sicks(:one)
  end

  test "should get index" do
    get sicks_url
    assert_response :success
  end

  test "should get new" do
    get new_sick_url
    assert_response :success
  end

  test "should create sick" do
    assert_difference('Sick.count') do
      post sicks_url, params: { sick: { address: @sick.address, date_of_birth: @sick.date_of_birth, first_name: @sick.first_name, last_name: @sick.last_name, passport: @sick.passport, patronymic: @sick.patronymic, phone: @sick.phone, policy: @sick.policy, sex: @sick.sex } }
    end

    assert_redirected_to sick_url(Sick.last)
  end

  test "should show sick" do
    get sick_url(@sick)
    assert_response :success
  end

  test "should get edit" do
    get edit_sick_url(@sick)
    assert_response :success
  end

  test "should update sick" do
    patch sick_url(@sick), params: { sick: { address: @sick.address, date_of_birth: @sick.date_of_birth, first_name: @sick.first_name, last_name: @sick.last_name, passport: @sick.passport, patronymic: @sick.patronymic, phone: @sick.phone, policy: @sick.policy, sex: @sick.sex } }
    assert_redirected_to sick_url(@sick)
  end

  test "should destroy sick" do
    assert_difference('Sick.count', -1) do
      delete sick_url(@sick)
    end

    assert_redirected_to sicks_url
  end
end
