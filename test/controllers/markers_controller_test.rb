require "test_helper"

class MarkersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @marker = markers(:one)
  end

  test "should get index" do
    get markers_url
    assert_response :success
  end

  test "should get new" do
    get new_marker_url
    assert_response :success
  end

  test "should create marker" do
    assert_difference("Marker.count") do
      post markers_url, params: { marker: { customerimpact: @marker.customerimpact, description: @marker.description, frequency: @marker.frequency, livemetrics: @marker.livemetrics, marker: @marker.marker, platform: @marker.platform } }
    end

    assert_redirected_to marker_url(Marker.last)
  end

  test "should show marker" do
    get marker_url(@marker)
    assert_response :success
  end

  test "should get edit" do
    get edit_marker_url(@marker)
    assert_response :success
  end

  test "should update marker" do
    patch marker_url(@marker), params: { marker: { customerimpact: @marker.customerimpact, description: @marker.description, frequency: @marker.frequency, livemetrics: @marker.livemetrics, marker: @marker.marker, platform: @marker.platform } }
    assert_redirected_to marker_url(@marker)
  end

  test "should destroy marker" do
    assert_difference("Marker.count", -1) do
      delete marker_url(@marker)
    end

    assert_redirected_to markers_url
  end
end
