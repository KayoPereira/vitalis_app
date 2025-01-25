class Pet < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  def species
    PetSpecies.find(pet_species_id).name
  end

  def breed
    PetBreed.find(pet_breed_id).name
  end
end
