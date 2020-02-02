require "application_system_test_case"

class DeseaseRecordsTest < ApplicationSystemTestCase
  setup do
    @desease_record = desease_records(:one)
  end

  test "visiting the index" do
    visit desease_records_url
    assert_selector "h1", text: "Desease Records"
  end

  test "creating a Desease record" do
    visit desease_records_url
    click_on "New Desease Record"

    fill_in "Description", with: @desease_record.description
    fill_in "Disease classification", with: @desease_record.disease_classification
    fill_in "Finish date", with: @desease_record.finish_date
    fill_in "Result", with: @desease_record.result
    fill_in "Sick", with: @desease_record.sick_id
    fill_in "Start date", with: @desease_record.start_date
    click_on "Create Desease record"

    assert_text "Desease record was successfully created"
    click_on "Back"
  end

  test "updating a Desease record" do
    visit desease_records_url
    click_on "Edit", match: :first

    fill_in "Description", with: @desease_record.description
    fill_in "Disease classification", with: @desease_record.disease_classification
    fill_in "Finish date", with: @desease_record.finish_date
    fill_in "Result", with: @desease_record.result
    fill_in "Sick", with: @desease_record.sick_id
    fill_in "Start date", with: @desease_record.start_date
    click_on "Update Desease record"

    assert_text "Desease record was successfully updated"
    click_on "Back"
  end

  test "destroying a Desease record" do
    visit desease_records_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Desease record was successfully destroyed"
  end
end
