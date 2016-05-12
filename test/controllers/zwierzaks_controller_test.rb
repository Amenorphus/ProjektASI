require 'test_helper'

class ZwierzaksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zwierzak = zwierzaks(:one)
  end

  test "should get index" do
    get zwierzaks_url
    assert_response :success
  end

  test "should get new" do
    get new_zwierzak_url
    assert_response :success
  end

  test "should create zwierzak" do
    assert_difference('Zwierzak.count') do
      post zwierzaks_url, params: { zwierzak: { data_ur: @zwierzak.data_ur, gatunek: @zwierzak.gatunek, imie: @zwierzak.imie, rasa: @zwierzak.rasa } }
    end

    assert_redirected_to zwierzak_path(Zwierzak.last)
  end

  test "should show zwierzak" do
    get zwierzak_url(@zwierzak)
    assert_response :success
  end

  test "should get edit" do
    get edit_zwierzak_url(@zwierzak)
    assert_response :success
  end

  test "should update zwierzak" do
    patch zwierzak_url(@zwierzak), params: { zwierzak: { data_ur: @zwierzak.data_ur, gatunek: @zwierzak.gatunek, imie: @zwierzak.imie, rasa: @zwierzak.rasa } }
    assert_redirected_to zwierzak_path(@zwierzak)
  end

  test "should destroy zwierzak" do
    assert_difference('Zwierzak.count', -1) do
      delete zwierzak_url(@zwierzak)
    end

    assert_redirected_to zwierzaks_path
  end
end
