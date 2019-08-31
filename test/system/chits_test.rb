require "application_system_test_case"

class ChitsTest < ApplicationSystemTestCase
  setup do
    @chit = chits(:one)
  end

  test "visiting the index" do
    visit chits_url
    assert_selector "h1", text: "Chits"
  end

  test "creating a Chit" do
    visit chits_url
    click_on "New Chit"

    fill_in "Chit", with: @chit.chit
    click_on "Create Chit"

    assert_text "Chit was successfully created"
    click_on "Back"
  end

  test "updating a Chit" do
    visit chits_url
    click_on "Edit", match: :first

    fill_in "Chit", with: @chit.chit
    click_on "Update Chit"

    assert_text "Chit was successfully updated"
    click_on "Back"
  end

  test "destroying a Chit" do
    visit chits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chit was successfully destroyed"
  end
end
