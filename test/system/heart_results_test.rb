require "application_system_test_case"

class HeartResultsTest < ApplicationSystemTestCase
  setup do
    @heart_result = heart_results(:one)
  end

  test "visiting the index" do
    visit heart_results_url
    assert_selector "h1", text: "Heart Results"
  end

  test "creating a Heart result" do
    visit heart_results_url
    click_on "New Heart Result"

    fill_in "Heart program", with: @heart_result.heart_program_id
    fill_in "Sick", with: @heart_result.sick_id
    click_on "Create Heart result"

    assert_text "Heart result was successfully created"
    click_on "Back"
  end

  test "updating a Heart result" do
    visit heart_results_url
    click_on "Edit", match: :first

    fill_in "Heart program", with: @heart_result.heart_program_id
    fill_in "Sick", with: @heart_result.sick_id
    click_on "Update Heart result"

    assert_text "Heart result was successfully updated"
    click_on "Back"
  end

  test "destroying a Heart result" do
    visit heart_results_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Heart result was successfully destroyed"
  end
end
