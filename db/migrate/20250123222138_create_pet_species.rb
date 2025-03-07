class CreatePetSpecies < ActiveRecord::Migration[8.0]
  def change
    create_table :pet_species do |t|
      t.string :name

      t.timestamps
    end
  end
end
