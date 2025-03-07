class CreatePetBreeds < ActiveRecord::Migration[8.0]
  def change
    create_table :pet_breeds do |t|
      t.string :name
      t.references :pet_species, null: false, foreign_key: true

      t.timestamps
    end
  end
end
