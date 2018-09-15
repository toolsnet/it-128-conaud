require 'test_helper'

class DenunciasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @denuncia = denuncias(:one)
  end

  test "should get index" do
    get denuncias_index_url
    assert_response :success
  end

  test "should get new" do
    get new_denuncia_url
    assert_response :success
  end

  test "should create denuncia" do
    assert_difference('Denuncias.count') do
      post denuncias_index_url, params: { denuncia: { aud_niv: @denuncia.aud_niv, aud_rep: @denuncia.aud_rep, fec_den: @denuncia.fec_den, hor_den: @denuncia.hor_den, id_den: @denuncia.id_den, id_usu_den: @denuncia.id_usu_den, ima_fue: @denuncia.ima_fue, lat_den: @denuncia.lat_den, lon_den: @denuncia.lon_den } }
    end

    assert_redirected_to denuncia_url(Denuncias.last)
  end

  test "should show denuncia" do
    get denuncia_url(@denuncia)
    assert_response :success
  end

  test "should get edit" do
    get edit_denuncia_url(@denuncia)
    assert_response :success
  end

  test "should update denuncia" do
    patch denuncia_url(@denuncia), params: { denuncia: { aud_niv: @denuncia.aud_niv, aud_rep: @denuncia.aud_rep, fec_den: @denuncia.fec_den, hor_den: @denuncia.hor_den, id_den: @denuncia.id_den, id_usu_den: @denuncia.id_usu_den, ima_fue: @denuncia.ima_fue, lat_den: @denuncia.lat_den, lon_den: @denuncia.lon_den } }
    assert_redirected_to denuncia_url(@denuncia)
  end

  test "should destroy denuncia" do
    assert_difference('Denuncias.count', -1) do
      delete denuncia_url(@denuncia)
    end

    assert_redirected_to denuncias_index_url
  end
end
