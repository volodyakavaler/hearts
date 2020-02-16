require "application_system_test_case"

class DeseaseRecordNotesTest < ApplicationSystemTestCase
  setup do
    @desease_record_note = desease_record_notes(:one)
  end

  test "visiting the index" do
    visit desease_record_notes_url
    assert_selector "h1", text: "Desease Record Notes"
  end

  test "creating a Desease record note" do
    visit desease_record_notes_url
    click_on "New Desease Record Note"

    fill_in "Desease record", with: @desease_record_note.desease_record_id
    fill_in "Destination", with: @desease_record_note.destination
    fill_in "Dynamics", with: @desease_record_note.dynamics
    fill_in "Etc", with: @desease_record_note.etc
    fill_in "Record date", with: @desease_record_note.record_date
    click_on "Create Desease record note"

    assert_text "Desease record note was successfully created"
    click_on "Back"
  end

  test "updating a Desease record note" do
    visit desease_record_notes_url
    click_on "Edit", match: :first

    fill_in "Desease record", with: @desease_record_note.desease_record_id
    fill_in "Destination", with: @desease_record_note.destination
    fill_in "Dynamics", with: @desease_record_note.dynamics
    fill_in "Etc", with: @desease_record_note.etc
    fill_in "Record date", with: @desease_record_note.record_date
    click_on "Update Desease record note"

    assert_text "Desease record note was successfully updated"
    click_on "Back"
  end

  test "destroying a Desease record note" do
    visit desease_record_notes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Desease record note was successfully destroyed"
  end
end
