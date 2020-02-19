require "application_system_test_case"

class HeartPointsTest < ApplicationSystemTestCase
  setup do
    @heart_point = heart_points(:one)
  end

  test "visiting the index" do
    visit heart_points_url
    assert_selector "h1", text: "Heart Points"
  end

  test "creating a Heart point" do
    visit heart_points_url
    click_on "New Heart Point"

    fill_in "Heart result", with: @heart_point.heart_result_id
    fill_in "X", with: @heart_point.x
    fill_in "Y", with: @heart_point.y
    click_on "Create Heart point"

    assert_text "Heart point was successfully created"
    click_on "Back"
  end

  test "updating a Heart point" do
    visit heart_points_url
    click_on "Edit", match: :first

    fill_in "Heart result", with: @heart_point.heart_result_id
    fill_in "X", with: @heart_point.x
    fill_in "Y", with: @heart_point.y
    click_on "Update Heart point"

    assert_text "Heart point was successfully updated"
    click_on "Back"
  end

  test "destroying a Heart point" do
    visit heart_points_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Heart point was successfully destroyed"
  end
end
