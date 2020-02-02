require 'test_helper'

class DeseaseRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @desease_record = desease_records(:one)
  end

  test "should get index" do
    get desease_records_url
    assert_response :success
  end

  test "should get new" do
    get new_desease_record_url
    assert_response :success
  end

  test "should create desease_record" do
    assert_difference('DeseaseRecord.count') do
      post desease_records_url, params: { desease_record: { description: @desease_record.description, disease_classification: @desease_record.disease_classification, finish_date: @desease_record.finish_date, result: @desease_record.result, sick_id: @desease_record.sick_id, start_date: @desease_record.start_date } }
    end

    assert_redirected_to desease_record_url(DeseaseRecord.last)
  end

  test "should show desease_record" do
    get desease_record_url(@desease_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_desease_record_url(@desease_record)
    assert_response :success
  end

  test "should update desease_record" do
    patch desease_record_url(@desease_record), params: { desease_record: { description: @desease_record.description, disease_classification: @desease_record.disease_classification, finish_date: @desease_record.finish_date, result: @desease_record.result, sick_id: @desease_record.sick_id, start_date: @desease_record.start_date } }
    assert_redirected_to desease_record_url(@desease_record)
  end

  test "should destroy desease_record" do
    assert_difference('DeseaseRecord.count', -1) do
      delete desease_record_url(@desease_record)
    end

    assert_redirected_to desease_records_url
  end
end
