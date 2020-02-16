require 'test_helper'

class DeseaseRecordNotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @desease_record_note = desease_record_notes(:one)
  end

  test "should get index" do
    get desease_record_notes_url
    assert_response :success
  end

  test "should get new" do
    get new_desease_record_note_url
    assert_response :success
  end

  test "should create desease_record_note" do
    assert_difference('DeseaseRecordNote.count') do
      post desease_record_notes_url, params: { desease_record_note: { desease_record_id: @desease_record_note.desease_record_id, destination: @desease_record_note.destination, dynamics: @desease_record_note.dynamics, etc: @desease_record_note.etc, record_date: @desease_record_note.record_date } }
    end

    assert_redirected_to desease_record_note_url(DeseaseRecordNote.last)
  end

  test "should show desease_record_note" do
    get desease_record_note_url(@desease_record_note)
    assert_response :success
  end

  test "should get edit" do
    get edit_desease_record_note_url(@desease_record_note)
    assert_response :success
  end

  test "should update desease_record_note" do
    patch desease_record_note_url(@desease_record_note), params: { desease_record_note: { desease_record_id: @desease_record_note.desease_record_id, destination: @desease_record_note.destination, dynamics: @desease_record_note.dynamics, etc: @desease_record_note.etc, record_date: @desease_record_note.record_date } }
    assert_redirected_to desease_record_note_url(@desease_record_note)
  end

  test "should destroy desease_record_note" do
    assert_difference('DeseaseRecordNote.count', -1) do
      delete desease_record_note_url(@desease_record_note)
    end

    assert_redirected_to desease_record_notes_url
  end
end
