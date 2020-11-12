require "application_system_test_case"

class SurfboardsTest < ApplicationSystemTestCase
  setup do
    @surfboard = surfboards(:one)
  end

  test "visiting the index" do
    visit surfboards_url
    assert_selector "h1", text: "Surfboards"
  end

  test "creating a Surfboard" do
    visit surfboards_url
    click_on "New Surfboard"

    fill_in "Model", with: @surfboard.model
    fill_in "Shaper", with: @surfboard.shaper
    fill_in "Size", with: @surfboard.size
    click_on "Create Surfboard"

    assert_text "Surfboard was successfully created"
    click_on "Back"
  end

  test "updating a Surfboard" do
    visit surfboards_url
    click_on "Edit", match: :first

    fill_in "Model", with: @surfboard.model
    fill_in "Shaper", with: @surfboard.shaper
    fill_in "Size", with: @surfboard.size
    click_on "Update Surfboard"

    assert_text "Surfboard was successfully updated"
    click_on "Back"
  end

  test "destroying a Surfboard" do
    visit surfboards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Surfboard was successfully destroyed"
  end
end
