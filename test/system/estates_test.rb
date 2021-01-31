require "application_system_test_case"

class EstatesTest < ApplicationSystemTestCase
  setup do
    @estate = estates(:one)
  end

  test "visiting the index" do
    visit estates_url
    assert_selector "h1", text: "Estates"
  end

  test "creating a Estate" do
    visit estates_url
    click_on "New Estate"

    fill_in "Adress", with: @estate.adress
    fill_in "Age", with: @estate.age
    fill_in "Name", with: @estate.name
    fill_in "Note", with: @estate.note
    fill_in "Rent fee", with: @estate.rent_fee
    click_on "Create Estate"

    assert_text "Estate was successfully created"
    click_on "Back"
  end

  test "updating a Estate" do
    visit estates_url
    click_on "Edit", match: :first

    fill_in "Adress", with: @estate.adress
    fill_in "Age", with: @estate.age
    fill_in "Name", with: @estate.name
    fill_in "Note", with: @estate.note
    fill_in "Rent fee", with: @estate.rent_fee
    click_on "Update Estate"

    assert_text "Estate was successfully updated"
    click_on "Back"
  end

  test "destroying a Estate" do
    visit estates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Estate was successfully destroyed"
  end
end
