require "test_helper"

class PropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @property = properties(:one)
  end

  test "should get index" do
    get properties_url
    assert_response :success
  end

  test "should get new" do
    get new_property_url
    assert_response :success
  end

  test "should create property" do
    assert_difference("Property.count") do
      post properties_url, params: { property: { area_sqft: @property.area_sqft, bathrooms: @property.bathrooms, bedrooms: @property.bedrooms, desciption: @property.desciption, price: @property.price, property_type: @property.property_type, status: @property.status, timestamps: @property.timestamps, title: @property.title } }
    end

    assert_redirected_to property_url(Property.last)
  end

  test "should show property" do
    get property_url(@property)
    assert_response :success
  end

  test "should get edit" do
    get edit_property_url(@property)
    assert_response :success
  end

  test "should update property" do
    patch property_url(@property), params: { property: { area_sqft: @property.area_sqft, bathrooms: @property.bathrooms, bedrooms: @property.bedrooms, desciption: @property.desciption, price: @property.price, property_type: @property.property_type, status: @property.status, timestamps: @property.timestamps, title: @property.title } }
    assert_redirected_to property_url(@property)
  end

  test "should destroy property" do
    assert_difference("Property.count", -1) do
      delete property_url(@property)
    end

    assert_redirected_to properties_url
  end
end
