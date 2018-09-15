require 'test_helper'

class AutoridadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @autoridad = autoridads(:one)
  end

  test "should get index" do
    get autoridads_url
    assert_response :success
  end

  test "should get new" do
    get new_autoridad_url
    assert_response :success
  end

  test "should create autoridad" do
    assert_difference('Autoridad.count') do
      post autoridads_url, params: { autoridad: { id_aut: @autoridad.id_aut, id_tip_doc: @autoridad.id_tip_doc, num_doc_aut: @autoridad.num_doc_aut, pas_aut: @autoridad.pas_aut, pri_ape_aut: @autoridad.pri_ape_aut, pri_nom_aut: @autoridad.pri_nom_aut, seg_ape_aut: @autoridad.seg_ape_aut, seg_nom_aut: @autoridad.seg_nom_aut, usu_aut: @autoridad.usu_aut } }
    end

    assert_redirected_to autoridad_url(Autoridad.last)
  end

  test "should show autoridad" do
    get autoridad_url(@autoridad)
    assert_response :success
  end

  test "should get edit" do
    get edit_autoridad_url(@autoridad)
    assert_response :success
  end

  test "should update autoridad" do
    patch autoridad_url(@autoridad), params: { autoridad: { id_aut: @autoridad.id_aut, id_tip_doc: @autoridad.id_tip_doc, num_doc_aut: @autoridad.num_doc_aut, pas_aut: @autoridad.pas_aut, pri_ape_aut: @autoridad.pri_ape_aut, pri_nom_aut: @autoridad.pri_nom_aut, seg_ape_aut: @autoridad.seg_ape_aut, seg_nom_aut: @autoridad.seg_nom_aut, usu_aut: @autoridad.usu_aut } }
    assert_redirected_to autoridad_url(@autoridad)
  end

  test "should destroy autoridad" do
    assert_difference('Autoridad.count', -1) do
      delete autoridad_url(@autoridad)
    end

    assert_redirected_to autoridads_url
  end
end
