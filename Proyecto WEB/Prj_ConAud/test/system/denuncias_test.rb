require "application_system_test_case"

class DenunciasTest < ApplicationSystemTestCase
  setup do
    @denuncia = denuncias(:one)
  end

  test "visiting the index" do
    visit denuncias_url
    assert_selector "h1", text: "Denuncias"
  end

  test "creating a Denuncias" do
    visit denuncias_url
    click_on "New Denuncias"

    fill_in "Aud Niv", with: @denuncia.aud_niv
    fill_in "Aud Rep", with: @denuncia.aud_rep
    fill_in "Fec Den", with: @denuncia.fec_den
    fill_in "Hor Den", with: @denuncia.hor_den
    fill_in "Id Den", with: @denuncia.id_den
    fill_in "Id Usu Den", with: @denuncia.id_usu_den
    fill_in "Ima Fue", with: @denuncia.ima_fue
    fill_in "Lat Den", with: @denuncia.lat_den
    fill_in "Lon Den", with: @denuncia.lon_den
    click_on "Create Denuncias"

    assert_text "Denuncias was successfully created"
    click_on "Back"
  end

  test "updating a Denuncias" do
    visit denuncias_url
    click_on "Edit", match: :first

    fill_in "Aud Niv", with: @denuncia.aud_niv
    fill_in "Aud Rep", with: @denuncia.aud_rep
    fill_in "Fec Den", with: @denuncia.fec_den
    fill_in "Hor Den", with: @denuncia.hor_den
    fill_in "Id Den", with: @denuncia.id_den
    fill_in "Id Usu Den", with: @denuncia.id_usu_den
    fill_in "Ima Fue", with: @denuncia.ima_fue
    fill_in "Lat Den", with: @denuncia.lat_den
    fill_in "Lon Den", with: @denuncia.lon_den
    click_on "Update Denuncias"

    assert_text "Denuncias was successfully updated"
    click_on "Back"
  end

  test "destroying a Denuncias" do
    visit denuncias_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Denuncias was successfully destroyed"
  end
end
