require "application_system_test_case"

class PetSpeciesTest < ApplicationSystemTestCase
  setup do
    @pet_species = pet_species(:one)
  end

  test "visiting the index" do
    visit pet_species_url
    assert_selector "h1", text: "Pet species"
  end

  test "should create pet specy" do
    visit pet_species_url
    click_on "New pet specy"

    click_on "Create Pet specy"

    assert_text "Pet specy was successfully created"
    click_on "Back"
  end

  test "should update Pet specy" do
    visit pet_species_url(@pet_species)
    click_on "Edit this pet specy", match: :first

    click_on "Update Pet specy"

    assert_text "Pet specy was successfully updated"
    click_on "Back"
  end

  test "should destroy Pet specy" do
    visit pet_species_url(@pet_species)
    click_on "Destroy this pet specy", match: :first

    assert_text "Pet specy was successfully destroyed"
  end
end
