require "application_system_test_case"

class ProtestsTest < ApplicationSystemTestCase
  setup do
    @protest = protests(:one)
  end

  test "visiting the index" do
    visit protests_url
    assert_selector "h1", text: "Protests"
  end

  test "should create protest" do
    visit protests_url
    click_on "New protest"

    fill_in "Contact name", with: @protest.contact_name
    fill_in "Contact organization", with: @protest.contact_organization
    fill_in "Contact phone", with: @protest.contact_phone
    fill_in "Description", with: @protest.description
    check "Is repeated" if @protest.is_repeated
    fill_in "Location", with: @protest.location
    fill_in "Num in series", with: @protest.num_in_series
    fill_in "Present", with: @protest.present
    fill_in "Type", with: @protest.type
    click_on "Create Protest"

    assert_text "Protest was successfully created"
    click_on "Back"
  end

  test "should update Protest" do
    visit protest_url(@protest)
    click_on "Edit this protest", match: :first

    fill_in "Contact name", with: @protest.contact_name
    fill_in "Contact organization", with: @protest.contact_organization
    fill_in "Contact phone", with: @protest.contact_phone
    fill_in "Description", with: @protest.description
    check "Is repeated" if @protest.is_repeated
    fill_in "Location", with: @protest.location
    fill_in "Num in series", with: @protest.num_in_series
    fill_in "Present", with: @protest.present
    fill_in "Type", with: @protest.type
    click_on "Update Protest"

    assert_text "Protest was successfully updated"
    click_on "Back"
  end

  test "should destroy Protest" do
    visit protest_url(@protest)
    click_on "Destroy this protest", match: :first

    assert_text "Protest was successfully destroyed"
  end
end
