require "application_system_test_case"

class SeguimientosTest < ApplicationSystemTestCase
  setup do
    @seguimiento = seguimientos(:one)
  end

  test "visiting the index" do
    visit seguimientos_url
    assert_selector "h1", text: "Seguimientos"
  end

  test "creating a Seguimiento" do
    visit seguimientos_url
    click_on "New Seguimiento"

    fill_in "Des Seg", with: @seguimiento.des_seg
    fill_in "Fec Seg", with: @seguimiento.fec_seg
    fill_in "Hor Seg", with: @seguimiento.hor_seg
    fill_in "Id Aut", with: @seguimiento.id_aut
    fill_in "Id Den", with: @seguimiento.id_den
    fill_in "Id Est Den", with: @seguimiento.id_est_den
    fill_in "Id Seg", with: @seguimiento.id_seg
    click_on "Create Seguimiento"

    assert_text "Seguimiento was successfully created"
    click_on "Back"
  end

  test "updating a Seguimiento" do
    visit seguimientos_url
    click_on "Edit", match: :first

    fill_in "Des Seg", with: @seguimiento.des_seg
    fill_in "Fec Seg", with: @seguimiento.fec_seg
    fill_in "Hor Seg", with: @seguimiento.hor_seg
    fill_in "Id Aut", with: @seguimiento.id_aut
    fill_in "Id Den", with: @seguimiento.id_den
    fill_in "Id Est Den", with: @seguimiento.id_est_den
    fill_in "Id Seg", with: @seguimiento.id_seg
    click_on "Update Seguimiento"

    assert_text "Seguimiento was successfully updated"
    click_on "Back"
  end

  test "destroying a Seguimiento" do
    visit seguimientos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Seguimiento was successfully destroyed"
  end
end
