require "application_system_test_case"

class PerrosTest < ApplicationSystemTestCase
  setup do
    @perro = perros(:one)
  end

  test "visiting the index" do
    visit perros_url
    assert_selector "h1", text: "Perros"
  end

  test "creating a Perro" do
    visit perros_url
    click_on "New Perro"

    click_on "Create Perro"

    assert_text "Perro was successfully created"
    click_on "Back"
  end

  test "updating a Perro" do
    visit perros_url
    click_on "Edit", match: :first

    click_on "Update Perro"

    assert_text "Perro was successfully updated"
    click_on "Back"
  end

  test "destroying a Perro" do
    visit perros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Perro was successfully destroyed"
  end
end
