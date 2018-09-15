require 'test_helper'

class TipDocsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tip_doc = tip_docs(:one)
  end

  test "should get index" do
    get tip_docs_url
    assert_response :success
  end

  test "should get new" do
    get new_tip_doc_url
    assert_response :success
  end

  test "should create tip_doc" do
    assert_difference('TipDoc.count') do
      post tip_docs_url, params: { tip_doc: { id_tip_doc: @tip_doc.id_tip_doc, nom_tip_doc: @tip_doc.nom_tip_doc } }
    end

    assert_redirected_to tip_doc_url(TipDoc.last)
  end

  test "should show tip_doc" do
    get tip_doc_url(@tip_doc)
    assert_response :success
  end

  test "should get edit" do
    get edit_tip_doc_url(@tip_doc)
    assert_response :success
  end

  test "should update tip_doc" do
    patch tip_doc_url(@tip_doc), params: { tip_doc: { id_tip_doc: @tip_doc.id_tip_doc, nom_tip_doc: @tip_doc.nom_tip_doc } }
    assert_redirected_to tip_doc_url(@tip_doc)
  end

  test "should destroy tip_doc" do
    assert_difference('TipDoc.count', -1) do
      delete tip_doc_url(@tip_doc)
    end

    assert_redirected_to tip_docs_url
  end
end
