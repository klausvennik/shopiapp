require "test_helper"

class CustomshippingratesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customshippingrate = customshippingrates(:one)
  end

  test "should get index" do
    get customshippingrates_url
    assert_response :success
  end

  test "should get new" do
    get new_customshippingrate_url
    assert_response :success
  end

  test "should create customshippingrate" do
    assert_difference("Customshippingrate.count") do
      post customshippingrates_url, params: { customshippingrate: { comuna: @customshippingrate.comuna, etiqueta: @customshippingrate.etiqueta, nombre_tarifa: @customshippingrate.nombre_tarifa, precio: @customshippingrate.precio } }
    end

    assert_redirected_to customshippingrate_url(Customshippingrate.last)
  end

  test "should show customshippingrate" do
    get customshippingrate_url(@customshippingrate)
    assert_response :success
  end

  test "should get edit" do
    get edit_customshippingrate_url(@customshippingrate)
    assert_response :success
  end

  test "should update customshippingrate" do
    patch customshippingrate_url(@customshippingrate), params: { customshippingrate: { comuna: @customshippingrate.comuna, etiqueta: @customshippingrate.etiqueta, nombre_tarifa: @customshippingrate.nombre_tarifa, precio: @customshippingrate.precio } }
    assert_redirected_to customshippingrate_url(@customshippingrate)
  end

  test "should destroy customshippingrate" do
    assert_difference("Customshippingrate.count", -1) do
      delete customshippingrate_url(@customshippingrate)
    end

    assert_redirected_to customshippingrates_url
  end
end
