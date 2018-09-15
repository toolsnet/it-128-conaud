require 'test_helper'

class DenunciaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @denuncium = denuncia(:one)
  end

  test "should get index" do
    get denuncia_url
    assert_response :success
  end

  test "should get new" do
    get new_denuncium_url
    assert_response :success
  end

  test "should create denuncium" do
    assert_difference('Denuncium.count') do
      post denuncia_url, params: { denuncium: { aud_niv: @denuncium.aud_niv, aud_rep: @denuncium.aud_rep, fec_den: @denuncium.fec_den, hor_den: @denuncium.hor_den, id_den: @denuncium.id_den, id_usu_den: @denuncium.id_usu_den, ima_fue: @denuncium.ima_fue, lat_den: @denuncium.lat_den, lon_den: @denuncium.lon_den } }
    end

    assert_redirected_to denuncium_url(Denuncium.last)
  end

  test "should show denuncium" do
    get denuncium_url(@denuncium)
    assert_response :success
  end

  test "should get edit" do
    get edit_denuncium_url(@denuncium)
    assert_response :success
  end

  test "should update denuncium" do
    patch denuncium_url(@denuncium), params: { denuncium: { aud_niv: @denuncium.aud_niv, aud_rep: @denuncium.aud_rep, fec_den: @denuncium.fec_den, hor_den: @denuncium.hor_den, id_den: @denuncium.id_den, id_usu_den: @denuncium.id_usu_den, ima_fue: @denuncium.ima_fue, lat_den: @denuncium.lat_den, lon_den: @denuncium.lon_den } }
    assert_redirected_to denuncium_url(@denuncium)
  end

  test "should destroy denuncium" do
    assert_difference('Denuncium.count', -1) do
      delete denuncium_url(@denuncium)
    end

    assert_redirected_to denuncia_url
  end
end
