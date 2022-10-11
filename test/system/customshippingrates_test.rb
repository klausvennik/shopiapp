require "application_system_test_case"

class CustomshippingratesTest < ApplicationSystemTestCase
  setup do
    @customshippingrate = customshippingrates(:one)
  end

  test "visiting the index" do
    visit customshippingrates_url
    assert_selector "h1", text: "Customshippingrates"
  end

  test "should create customshippingrate" do
    visit customshippingrates_url
    click_on "New customshippingrate"

    fill_in "Comuna", with: @customshippingrate.comuna
    fill_in "Etiqueta", with: @customshippingrate.etiqueta
    fill_in "Nombre tarifa", with: @customshippingrate.nombre_tarifa
    fill_in "Precio", with: @customshippingrate.precio
    click_on "Create Customshippingrate"

    assert_text "Customshippingrate was successfully created"
    click_on "Back"
  end

  test "should update Customshippingrate" do
    visit customshippingrate_url(@customshippingrate)
    click_on "Edit this customshippingrate", match: :first

    fill_in "Comuna", with: @customshippingrate.comuna
    fill_in "Etiqueta", with: @customshippingrate.etiqueta
    fill_in "Nombre tarifa", with: @customshippingrate.nombre_tarifa
    fill_in "Precio", with: @customshippingrate.precio
    click_on "Update Customshippingrate"

    assert_text "Customshippingrate was successfully updated"
    click_on "Back"
  end

  test "should destroy Customshippingrate" do
    visit customshippingrate_url(@customshippingrate)
    click_on "Destroy this customshippingrate", match: :first

    assert_text "Customshippingrate was successfully destroyed"
  end
end
