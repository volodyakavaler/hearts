require "application_system_test_case"

class HeartProgramsTest < ApplicationSystemTestCase
  setup do
    @heart_program = heart_programs(:one)
  end

  test "visiting the index" do
    visit heart_programs_url
    assert_selector "h1", text: "Heart Programs"
  end

  test "creating a Heart program" do
    visit heart_programs_url
    click_on "New Heart Program"

    fill_in "Device", with: @heart_program.device_id
    fill_in "Sick", with: @heart_program.sick_id
    click_on "Create Heart program"

    assert_text "Heart program was successfully created"
    click_on "Back"
  end

  test "updating a Heart program" do
    visit heart_programs_url
    click_on "Edit", match: :first

    fill_in "Device", with: @heart_program.device_id
    fill_in "Sick", with: @heart_program.sick_id
    click_on "Update Heart program"

    assert_text "Heart program was successfully updated"
    click_on "Back"
  end

  test "destroying a Heart program" do
    visit heart_programs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Heart program was successfully destroyed"
  end
end
