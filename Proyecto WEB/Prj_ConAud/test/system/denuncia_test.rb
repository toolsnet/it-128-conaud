require "application_system_test_case"

class DenunciaTest < ApplicationSystemTestCase
  setup do
    @denuncium = denuncia(:one)
  end

  test "visiting the index" do
    visit denuncia_url
    assert_selector "h1", text: "Denuncia"
  end

  test "creating a Denuncium" do
    visit denuncia_url
    click_on "New Denuncium"

    fill_in "Aud Niv", with: @denuncium.aud_niv
    fill_in "Aud Rep", with: @denuncium.aud_rep
    fill_in "Fec Den", with: @denuncium.fec_den
    fill_in "Hor Den", with: @denuncium.hor_den
    fill_in "Id Den", with: @denuncium.id_den
    fill_in "Id Usu Den", with: @denuncium.id_usu_den
    fill_in "Ima Fue", with: @denuncium.ima_fue
    fill_in "Lat Den", with: @denuncium.lat_den
    fill_in "Lon Den", with: @denuncium.lon_den
    click_on "Create Denuncium"

    assert_text "Denuncium was successfully created"
    click_on "Back"
  end

  test "updating a Denuncium" do
    visit denuncia_url
    click_on "Edit", match: :first

    fill_in "Aud Niv", with: @denuncium.aud_niv
    fill_in "Aud Rep", with: @denuncium.aud_rep
    fill_in "Fec Den", with: @denuncium.fec_den
    fill_in "Hor Den", with: @denuncium.hor_den
    fill_in "Id Den", with: @denuncium.id_den
    fill_in "Id Usu Den", with: @denuncium.id_usu_den
    fill_in "Ima Fue", with: @denuncium.ima_fue
    fill_in "Lat Den", with: @denuncium.lat_den
    fill_in "Lon Den", with: @denuncium.lon_den
    click_on "Update Denuncium"

    assert_text "Denuncium was successfully updated"
    click_on "Back"
  end

  test "destroying a Denuncium" do
    visit denuncia_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Denuncium was successfully destroyed"
  end
end
