require 'test_helper'

class DeliveriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @delivery = deliveries(:one)
  end

  test "should get index" do
    get deliveries_url
    assert_response :success
  end

  test "should get new" do
    get new_delivery_url
    assert_response :success
  end

  test "should create delivery" do
    assert_difference('Delivery.count') do
      post deliveries_url, params: { delivery: { delivery_carrier_phone_number: @delivery.delivery_carrier_phone_number, delivery_company_address: @delivery.delivery_company_address, delivery_company_name: @delivery.delivery_company_name, shipping_method: @delivery.shipping_method } }
    end

    assert_redirected_to delivery_url(Delivery.last)
  end

  test "should show delivery" do
    get delivery_url(@delivery)
    assert_response :success
  end

  test "should get edit" do
    get edit_delivery_url(@delivery)
    assert_response :success
  end

  test "should update delivery" do
    patch delivery_url(@delivery), params: { delivery: { delivery_carrier_phone_number: @delivery.delivery_carrier_phone_number, delivery_company_address: @delivery.delivery_company_address, delivery_company_name: @delivery.delivery_company_name, shipping_method: @delivery.shipping_method } }
    assert_redirected_to delivery_url(@delivery)
  end

  test "should destroy delivery" do
    assert_difference('Delivery.count', -1) do
      delete delivery_url(@delivery)
    end

    assert_redirected_to deliveries_url
  end
end
