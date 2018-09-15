require "application_system_test_case"

class TipDocsTest < ApplicationSystemTestCase
  setup do
    @tip_doc = tip_docs(:one)
  end

  test "visiting the index" do
    visit tip_docs_url
    assert_selector "h1", text: "Tip Docs"
  end

  test "creating a Tip doc" do
    visit tip_docs_url
    click_on "New Tip Doc"

    fill_in "Id Tip Doc", with: @tip_doc.id_tip_doc
    fill_in "Nom Tip Doc", with: @tip_doc.nom_tip_doc
    click_on "Create Tip doc"

    assert_text "Tip doc was successfully created"
    click_on "Back"
  end

  test "updating a Tip doc" do
    visit tip_docs_url
    click_on "Edit", match: :first

    fill_in "Id Tip Doc", with: @tip_doc.id_tip_doc
    fill_in "Nom Tip Doc", with: @tip_doc.nom_tip_doc
    click_on "Update Tip doc"

    assert_text "Tip doc was successfully updated"
    click_on "Back"
  end

  test "destroying a Tip doc" do
    visit tip_docs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tip doc was successfully destroyed"
  end
end
