class PetBreedsController < ApplicationController
  before_action :set_pet_breed, only: %i[ show edit update destroy ]
  before_action :set_pet_species, only: %i[ new create edit update destroy ]

  # GET /pet_breeds or /pet_breeds.json
  def index
    @pet_breeds = PetBreed.all
  end

  # GET /pet_breeds/1 or /pet_breeds/1.json
  def show
  end

  # GET /pet_breeds/new
  def new
    @pet_breed = PetBreed.new
  end

  # GET /pet_breeds/1/edit
  def edit
  end

  # POST /pet_breeds or /pet_breeds.json
  def create
    @pet_breed = PetBreed.new(name: params["pet_breed"]["name"])
    @pet_breed.pet_species = @pet_species

    respond_to do |format|
      if @pet_breed.save
        format.html { redirect_to "/pet_species/#{@pet_species.id}/pet_breeds/#{@pet_breed.id}", notice: "Pet breed was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pet_breeds/1 or /pet_breeds/1.json
  def update
    respond_to do |format|
      if @pet_breed.update(pet_breed_params)
        format.html { redirect_to @pet_breed, notice: "Pet breed was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pet_breeds/1 or /pet_breeds/1.json
  def destroy
    @pet_breed.destroy!

    respond_to do |format|
      format.html { redirect_to pet_breeds_path, status: :see_other, notice: "Pet breed was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet_breed
      @pet_breed = PetBreed.find(params.expect(:id))
    end

    def set_pet_species
      @pet_species = PetSpecies.find(params.require(:pet_species_id))
    end

    # Only allow a list of trusted parameters through.
    def pet_breed_params
      params.fetch(:pet_breed, {})
    end
end
