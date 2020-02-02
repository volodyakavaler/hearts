require "application_system_test_case"

class SicksTest < ApplicationSystemTestCase
  setup do
    @sick = sicks(:one)
  end

  test "visiting the index" do
    visit sicks_url
    assert_selector "h1", text: "Sicks"
  end

  test "creating a Sick" do
    visit sicks_url
    click_on "New Sick"

    fill_in "Address", with: @sick.address
    fill_in "Date of birth", with: @sick.date_of_birth
    fill_in "First name", with: @sick.first_name
    fill_in "Last name", with: @sick.last_name
    fill_in "Passport", with: @sick.passport
    fill_in "Patronymic", with: @sick.patronymic
    fill_in "Phone", with: @sick.phone
    fill_in "Policy", with: @sick.policy
    fill_in "Sex", with: @sick.sex
    click_on "Create Sick"

    assert_text "Sick was successfully created"
    click_on "Back"
  end

  test "updating a Sick" do
    visit sicks_url
    click_on "Edit", match: :first

    fill_in "Address", with: @sick.address
    fill_in "Date of birth", with: @sick.date_of_birth
    fill_in "First name", with: @sick.first_name
    fill_in "Last name", with: @sick.last_name
    fill_in "Passport", with: @sick.passport
    fill_in "Patronymic", with: @sick.patronymic
    fill_in "Phone", with: @sick.phone
    fill_in "Policy", with: @sick.policy
    fill_in "Sex", with: @sick.sex
    click_on "Update Sick"

    assert_text "Sick was successfully updated"
    click_on "Back"
  end

  test "destroying a Sick" do
    visit sicks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sick was successfully destroyed"
  end
end
