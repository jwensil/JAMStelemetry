require "application_system_test_case"

class MarkersTest < ApplicationSystemTestCase
  setup do
    @marker = markers(:one)
  end

  test "visiting the index" do
    visit markers_url
    assert_selector "h1", text: "Markers"
  end

  test "should create marker" do
    visit markers_url
    click_on "New marker"

    fill_in "Customerimpact", with: @marker.customerimpact
    fill_in "Description", with: @marker.description
    fill_in "Frequency", with: @marker.frequency
    fill_in "Livemetrics", with: @marker.livemetrics
    fill_in "Marker", with: @marker.marker
    fill_in "Platform", with: @marker.platform
    click_on "Create Marker"

    assert_text "Marker was successfully created"
    click_on "Back"
  end

  test "should update Marker" do
    visit marker_url(@marker)
    click_on "Edit this marker", match: :first

    fill_in "Customerimpact", with: @marker.customerimpact
    fill_in "Description", with: @marker.description
    fill_in "Frequency", with: @marker.frequency
    fill_in "Livemetrics", with: @marker.livemetrics
    fill_in "Marker", with: @marker.marker
    fill_in "Platform", with: @marker.platform
    click_on "Update Marker"

    assert_text "Marker was successfully updated"
    click_on "Back"
  end

  test "should destroy Marker" do
    visit marker_url(@marker)
    click_on "Destroy this marker", match: :first

    assert_text "Marker was successfully destroyed"
  end
end
