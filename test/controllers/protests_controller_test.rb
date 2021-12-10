require "test_helper"

class ProtestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @protest = protests(:one)
  end

  test "should get index" do
    get protests_url
    assert_response :success
  end

  test "should get new" do
    get new_protest_url
    assert_response :success
  end

  test "should create protest" do
    assert_difference("Protest.count") do
      post protests_url, params: { protest: { contact_name: @protest.contact_name, contact_organization: @protest.contact_organization, contact_phone: @protest.contact_phone, description: @protest.description, is_repeated: @protest.is_repeated, location: @protest.location, num_in_series: @protest.num_in_series, present: @protest.present, type: @protest.type } }
    end

    assert_redirected_to protest_url(Protest.last)
  end

  test "should show protest" do
    get protest_url(@protest)
    assert_response :success
  end

  test "should get edit" do
    get edit_protest_url(@protest)
    assert_response :success
  end

  test "should update protest" do
    patch protest_url(@protest), params: { protest: { contact_name: @protest.contact_name, contact_organization: @protest.contact_organization, contact_phone: @protest.contact_phone, description: @protest.description, is_repeated: @protest.is_repeated, location: @protest.location, num_in_series: @protest.num_in_series, present: @protest.present, type: @protest.type } }
    assert_redirected_to protest_url(@protest)
  end

  test "should destroy protest" do
    assert_difference("Protest.count", -1) do
      delete protest_url(@protest)
    end

    assert_redirected_to protests_url
  end
end
