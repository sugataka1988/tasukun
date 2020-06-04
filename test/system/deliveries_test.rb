require "application_system_test_case"

class DeliveriesTest < ApplicationSystemTestCase
  setup do
    @delivery = deliveries(:one)
  end

  test "visiting the index" do
    visit deliveries_url
    assert_selector "h1", text: "Deliveries"
  end

  test "creating a Delivery" do
    visit deliveries_url
    click_on "New Delivery"

    fill_in "Delivery carrier phone number", with: @delivery.delivery_carrier_phone_number
    fill_in "Delivery company address", with: @delivery.delivery_company_address
    fill_in "Delivery company name", with: @delivery.delivery_company_name
    fill_in "Shipping method", with: @delivery.shipping_method
    click_on "Create Delivery"

    assert_text "Delivery was successfully created"
    click_on "Back"
  end

  test "updating a Delivery" do
    visit deliveries_url
    click_on "Edit", match: :first

    fill_in "Delivery carrier phone number", with: @delivery.delivery_carrier_phone_number
    fill_in "Delivery company address", with: @delivery.delivery_company_address
    fill_in "Delivery company name", with: @delivery.delivery_company_name
    fill_in "Shipping method", with: @delivery.shipping_method
    click_on "Update Delivery"

    assert_text "Delivery was successfully updated"
    click_on "Back"
  end

  test "destroying a Delivery" do
    visit deliveries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Delivery was successfully destroyed"
  end
end
