require "application_system_test_case"

class DenunciantesTest < ApplicationSystemTestCase
  setup do
    @denunciante = denunciantes(:one)
  end

  test "visiting the index" do
    visit denunciantes_url
    assert_selector "h1", text: "Denunciantes"
  end

  test "creating a Denunciante" do
    visit denunciantes_url
    click_on "New Denunciante"

    fill_in "Id Usu Den", with: @denunciante.id_usu_den
    click_on "Create Denunciante"

    assert_text "Denunciante was successfully created"
    click_on "Back"
  end

  test "updating a Denunciante" do
    visit denunciantes_url
    click_on "Edit", match: :first

    fill_in "Id Usu Den", with: @denunciante.id_usu_den
    click_on "Update Denunciante"

    assert_text "Denunciante was successfully updated"
    click_on "Back"
  end

  test "destroying a Denunciante" do
    visit denunciantes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Denunciante was successfully destroyed"
  end
end
