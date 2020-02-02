require "application_system_test_case"

class LifeanamnesesTest < ApplicationSystemTestCase
  setup do
    @lifeanamnese = lifeanamneses(:one)
  end

  test "visiting the index" do
    visit lifeanamneses_url
    assert_selector "h1", text: "Lifeanamneses"
  end

  test "creating a Lifeanamnese" do
    visit lifeanamneses_url
    click_on "New Lifeanamnese"

    fill_in "Alcohol consumption", with: @lifeanamnese.alcohol_consumption
    fill_in "Children", with: @lifeanamnese.children
    fill_in "Drug use", with: @lifeanamnese.drug_use
    fill_in "Job", with: @lifeanamnese.job
    fill_in "Living conditions", with: @lifeanamnese.living_conditions
    fill_in "Marital status", with: @lifeanamnese.marital_status
    fill_in "Nutrition", with: @lifeanamnese.nutrition
    fill_in "Past illnesses", with: @lifeanamnese.past_illnesses
    fill_in "Sick", with: @lifeanamnese.sick_id
    fill_in "Smoking", with: @lifeanamnese.smoking
    click_on "Create Lifeanamnese"

    assert_text "Lifeanamnese was successfully created"
    click_on "Back"
  end

  test "updating a Lifeanamnese" do
    visit lifeanamneses_url
    click_on "Edit", match: :first

    fill_in "Alcohol consumption", with: @lifeanamnese.alcohol_consumption
    fill_in "Children", with: @lifeanamnese.children
    fill_in "Drug use", with: @lifeanamnese.drug_use
    fill_in "Job", with: @lifeanamnese.job
    fill_in "Living conditions", with: @lifeanamnese.living_conditions
    fill_in "Marital status", with: @lifeanamnese.marital_status
    fill_in "Nutrition", with: @lifeanamnese.nutrition
    fill_in "Past illnesses", with: @lifeanamnese.past_illnesses
    fill_in "Sick", with: @lifeanamnese.sick_id
    fill_in "Smoking", with: @lifeanamnese.smoking
    click_on "Update Lifeanamnese"

    assert_text "Lifeanamnese was successfully updated"
    click_on "Back"
  end

  test "destroying a Lifeanamnese" do
    visit lifeanamneses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lifeanamnese was successfully destroyed"
  end
end
