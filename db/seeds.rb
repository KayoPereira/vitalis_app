# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# Create a PetSpecies
dog = PetSpecies.find_or_create_by!(name: "Cachorro")
cat = PetSpecies.find_or_create_by!(name: "Gato")
bird = PetSpecies.find_or_create_by!(name: "Pássaro")
fish = PetSpecies.find_or_create_by!(name: "Peixe")
rabbit = PetSpecies.find_or_create_by!(name: "Coelho")
hamster = PetSpecies.find_or_create_by!(name: "Hamster")
rodent = PetSpecies.find_or_create_by!(name: "Roedor")
reptile = PetSpecies.find_or_create_by!(name: "Réptil")
other = PetSpecies.find_or_create_by!(name: "Outro")


# Create a PetBreed

# Dogs
PetBreed.find_or_create_by!(name: "Vira-lata", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Poodle", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Bulldog", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Beagle", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Golden Retriever", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Pastor Alemão", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Schnauzer", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Shih Tzu", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Yorkshire", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Chihuahua", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Labrador", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Rottweiler", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Dachshund", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Husky Siberiano", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Basset Hound", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Pinscher", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Lhasa Apso", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Bichon Frisé", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Bull Terrier", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Pug", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Doberman", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Shar Pei", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Akita", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Maltês", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Border Collie", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Bulldog Francês", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Chow Chow", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Dálmata", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Pit Bull", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Setter Irlandês", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Whippet", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Samoieda", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Bichon Havanês", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Bulldog Inglês", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Cocker Spaniel", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Dogue Alemão", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Fox Terrier", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Galgo", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Lulu da Pomerânia", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Mastiff", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Papillon", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Pequinês", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Pinscher Miniatura", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Podengo", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Ridgeback", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Schnauzer Miniatura", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Setter Inglês", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Shiba Inu", pet_species_id: dog.id)
PetBreed.find_or_create_by!(name: "Spitz Alemão", pet_species_id: dog.id)


# Cats
PetBreed.find_or_create_by!(name: "Vira-lata", pet_species_id: cat.id)
PetBreed.find_or_create_by!(name: "Siamês", pet_species_id: cat.id)
PetBreed.find_or_create_by!(name: "Persa", pet_species_id: cat.id)
PetBreed.find_or_create_by!(name: "Sphynx", pet_species_id: cat.id)


# Birds
PetBreed.find_or_create_by!(name: "Calopsita", pet_species_id: bird.id)
PetBreed.find_or_create_by!(name: "Periquito", pet_species_id: bird.id)
PetBreed.find_or_create_by!(name: "Cacatua", pet_species_id: bird.id)
PetBreed.find_or_create_by!(name: "Papagaio", pet_species_id: bird.id)


# Fishes
PetBreed.find_or_create_by!(name: "Betta", pet_species_id: fish.id)
PetBreed.find_or_create_by!(name: "Kinguio", pet_species_id: fish.id)
PetBreed.find_or_create_by!(name: "Tetra", pet_species_id: fish.id)
PetBreed.find_or_create_by!(name: "Acará", pet_species_id: fish.id)
PetBreed.find_or_create_by!(name: "Carpa", pet_species_id: fish.id)


# Rabbits
PetBreed.find_or_create_by!(name: "Vira-lata", pet_species_id: rabbit.id)
PetBreed.find_or_create_by!(name: "Holandês", pet_species_id: rabbit.id)
PetBreed.find_or_create_by!(name: "Lion Head", pet_species_id: rabbit.id)
PetBreed.find_or_create_by!(name: "Mini Lop", pet_species_id: rabbit.id)



# Hamsters
PetBreed.find_or_create_by!(name: "Sírio", pet_species_id: hamster.id)
PetBreed.find_or_create_by!(name: "Russo", pet_species_id: hamster.id)
PetBreed.find_or_create_by!(name: "Chinês", pet_species_id: hamster.id)
PetBreed.find_or_create_by!(name: "Roborovski", pet_species_id: hamster.id)


# Rodents
PetBreed.find_or_create_by!(name: "Porquinho da Índia", pet_species_id: rodent.id)
PetBreed.find_or_create_by!(name: "Chinchila", pet_species_id: rodent.id)
PetBreed.find_or_create_by!(name: "Esquilo", pet_species_id: rodent.id)
PetBreed.find_or_create_by!(name: "Furão", pet_species_id: rodent.id)


# Reptiles
PetBreed.find_or_create_by!(name: "Tartaruga", pet_species_id: reptile.id)
PetBreed.find_or_create_by!(name: "Iguana", pet_species_id: reptile.id)
PetBreed.find_or_create_by!(name: "Cobra", pet_species_id: reptile.id)
PetBreed.find_or_create_by!(name: "Lagarto", pet_species_id: reptile.id)

