require 'test_helper'

class DenunciantesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @denunciante = denunciantes(:one)
  end

  test "should get index" do
    get denunciantes_url
    assert_response :success
  end

  test "should get new" do
    get new_denunciante_url
    assert_response :success
  end

  test "should create denunciante" do
    assert_difference('Denunciante.count') do
      post denunciantes_url, params: { denunciante: { id_usu_den: @denunciante.id_usu_den } }
    end

    assert_redirected_to denunciante_url(Denunciante.last)
  end

  test "should show denunciante" do
    get denunciante_url(@denunciante)
    assert_response :success
  end

  test "should get edit" do
    get edit_denunciante_url(@denunciante)
    assert_response :success
  end

  test "should update denunciante" do
    patch denunciante_url(@denunciante), params: { denunciante: { id_usu_den: @denunciante.id_usu_den } }
    assert_redirected_to denunciante_url(@denunciante)
  end

  test "should destroy denunciante" do
    assert_difference('Denunciante.count', -1) do
      delete denunciante_url(@denunciante)
    end

    assert_redirected_to denunciantes_url
  end
end
