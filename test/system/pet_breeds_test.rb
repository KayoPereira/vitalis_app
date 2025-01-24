require "application_system_test_case"

class PetBreedsTest < ApplicationSystemTestCase
  setup do
    @pet_breed = pet_breeds(:one)
  end

  test "visiting the index" do
    visit pet_breeds_url
    assert_selector "h1", text: "Pet breeds"
  end

  test "should create pet breed" do
    visit pet_breeds_url
    click_on "New pet breed"

    click_on "Create Pet breed"

    assert_text "Pet breed was successfully created"
    click_on "Back"
  end

  test "should update Pet breed" do
    visit pet_breed_url(@pet_breed)
    click_on "Edit this pet breed", match: :first

    click_on "Update Pet breed"

    assert_text "Pet breed was successfully updated"
    click_on "Back"
  end

  test "should destroy Pet breed" do
    visit pet_breed_url(@pet_breed)
    click_on "Destroy this pet breed", match: :first

    assert_text "Pet breed was successfully destroyed"
  end
end
