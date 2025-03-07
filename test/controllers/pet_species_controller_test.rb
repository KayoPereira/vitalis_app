require "test_helper"

class PetSpeciesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pet_species = pet_species(:one)
  end

  test "should get index" do
    get pet_species_url
    assert_response :success
  end

  test "should get new" do
    get new_pet_species_url
    assert_response :success
  end

  test "should create pet_species" do
    assert_difference("PetSpecies.count") do
      post pet_species_url, params: { pet_species: {} }
    end

    assert_redirected_to pet_species_url(PetSpecies.last)
  end

  test "should show pet_species" do
    get pet_species_url(@pet_species)
    assert_response :success
  end

  test "should get edit" do
    get edit_pet_species_url(@pet_species)
    assert_response :success
  end

  test "should update pet_species" do
    patch pet_species_url(@pet_species), params: { pet_species: {} }
    assert_redirected_to pet_species_url(@pet_species)
  end

  test "should destroy pet_species" do
    assert_difference("PetSpecies.count", -1) do
      delete pet_species_url(@pet_species)
    end

    assert_redirected_to pet_species_url
  end
end
