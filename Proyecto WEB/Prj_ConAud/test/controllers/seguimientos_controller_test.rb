require 'test_helper'

class SeguimientosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seguimiento = seguimientos(:one)
  end

  test "should get index" do
    get seguimientos_url
    assert_response :success
  end

  test "should get new" do
    get new_seguimiento_url
    assert_response :success
  end

  test "should create seguimiento" do
    assert_difference('Seguimiento.count') do
      post seguimientos_url, params: { seguimiento: { des_seg: @seguimiento.des_seg, fec_seg: @seguimiento.fec_seg, hor_seg: @seguimiento.hor_seg, id_aut: @seguimiento.id_aut, id_den: @seguimiento.id_den, id_est_den: @seguimiento.id_est_den, id_seg: @seguimiento.id_seg } }
    end

    assert_redirected_to seguimiento_url(Seguimiento.last)
  end

  test "should show seguimiento" do
    get seguimiento_url(@seguimiento)
    assert_response :success
  end

  test "should get edit" do
    get edit_seguimiento_url(@seguimiento)
    assert_response :success
  end

  test "should update seguimiento" do
    patch seguimiento_url(@seguimiento), params: { seguimiento: { des_seg: @seguimiento.des_seg, fec_seg: @seguimiento.fec_seg, hor_seg: @seguimiento.hor_seg, id_aut: @seguimiento.id_aut, id_den: @seguimiento.id_den, id_est_den: @seguimiento.id_est_den, id_seg: @seguimiento.id_seg } }
    assert_redirected_to seguimiento_url(@seguimiento)
  end

  test "should destroy seguimiento" do
    assert_difference('Seguimiento.count', -1) do
      delete seguimiento_url(@seguimiento)
    end

    assert_redirected_to seguimientos_url
  end
end
