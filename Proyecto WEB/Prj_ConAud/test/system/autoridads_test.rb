require "application_system_test_case"

class AutoridadsTest < ApplicationSystemTestCase
  setup do
    @autoridad = autoridads(:one)
  end

  test "visiting the index" do
    visit autoridads_url
    assert_selector "h1", text: "Autoridads"
  end

  test "creating a Autoridad" do
    visit autoridads_url
    click_on "New Autoridad"

    fill_in "Id Aut", with: @autoridad.id_aut
    fill_in "Id Tip Doc", with: @autoridad.id_tip_doc
    fill_in "Num Doc Aut", with: @autoridad.num_doc_aut
    fill_in "Pas Aut", with: @autoridad.pas_aut
    fill_in "Pri Ape Aut", with: @autoridad.pri_ape_aut
    fill_in "Pri Nom Aut", with: @autoridad.pri_nom_aut
    fill_in "Seg Ape Aut", with: @autoridad.seg_ape_aut
    fill_in "Seg Nom Aut", with: @autoridad.seg_nom_aut
    fill_in "Usu Aut", with: @autoridad.usu_aut
    click_on "Create Autoridad"

    assert_text "Autoridad was successfully created"
    click_on "Back"
  end

  test "updating a Autoridad" do
    visit autoridads_url
    click_on "Edit", match: :first

    fill_in "Id Aut", with: @autoridad.id_aut
    fill_in "Id Tip Doc", with: @autoridad.id_tip_doc
    fill_in "Num Doc Aut", with: @autoridad.num_doc_aut
    fill_in "Pas Aut", with: @autoridad.pas_aut
    fill_in "Pri Ape Aut", with: @autoridad.pri_ape_aut
    fill_in "Pri Nom Aut", with: @autoridad.pri_nom_aut
    fill_in "Seg Ape Aut", with: @autoridad.seg_ape_aut
    fill_in "Seg Nom Aut", with: @autoridad.seg_nom_aut
    fill_in "Usu Aut", with: @autoridad.usu_aut
    click_on "Update Autoridad"

    assert_text "Autoridad was successfully updated"
    click_on "Back"
  end

  test "destroying a Autoridad" do
    visit autoridads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Autoridad was successfully destroyed"
  end
end
