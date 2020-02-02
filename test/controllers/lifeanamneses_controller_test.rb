require 'test_helper'

class LifeanamnesesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lifeanamnese = lifeanamneses(:one)
  end

  test "should get index" do
    get lifeanamneses_url
    assert_response :success
  end

  test "should get new" do
    get new_lifeanamnese_url
    assert_response :success
  end

  test "should create lifeanamnese" do
    assert_difference('Lifeanamnese.count') do
      post lifeanamneses_url, params: { lifeanamnese: { alcohol_consumption: @lifeanamnese.alcohol_consumption, children: @lifeanamnese.children, drug_use: @lifeanamnese.drug_use, job: @lifeanamnese.job, living_conditions: @lifeanamnese.living_conditions, marital_status: @lifeanamnese.marital_status, nutrition: @lifeanamnese.nutrition, past_illnesses: @lifeanamnese.past_illnesses, sick_id: @lifeanamnese.sick_id, smoking: @lifeanamnese.smoking } }
    end

    assert_redirected_to lifeanamnese_url(Lifeanamnese.last)
  end

  test "should show lifeanamnese" do
    get lifeanamnese_url(@lifeanamnese)
    assert_response :success
  end

  test "should get edit" do
    get edit_lifeanamnese_url(@lifeanamnese)
    assert_response :success
  end

  test "should update lifeanamnese" do
    patch lifeanamnese_url(@lifeanamnese), params: { lifeanamnese: { alcohol_consumption: @lifeanamnese.alcohol_consumption, children: @lifeanamnese.children, drug_use: @lifeanamnese.drug_use, job: @lifeanamnese.job, living_conditions: @lifeanamnese.living_conditions, marital_status: @lifeanamnese.marital_status, nutrition: @lifeanamnese.nutrition, past_illnesses: @lifeanamnese.past_illnesses, sick_id: @lifeanamnese.sick_id, smoking: @lifeanamnese.smoking } }
    assert_redirected_to lifeanamnese_url(@lifeanamnese)
  end

  test "should destroy lifeanamnese" do
    assert_difference('Lifeanamnese.count', -1) do
      delete lifeanamnese_url(@lifeanamnese)
    end

    assert_redirected_to lifeanamneses_url
  end
end
