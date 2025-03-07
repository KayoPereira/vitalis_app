class RemoveSpeciesAndAddReferenceColumnSpeciesAndBreed < ActiveRecord::Migration[8.0]
  def change
    remove_column :pets, :species, :string
    remove_column :pets, :breed, :string
    add_reference :pets, :pet_species, null: false, foreign_key: true
    add_reference :pets, :pet_breed, null: false, foreign_key: true
  end
end
