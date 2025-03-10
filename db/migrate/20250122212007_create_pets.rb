class CreatePets < ActiveRecord::Migration[8.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.date :birthdate
      t.string :species
      t.string :breed
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
