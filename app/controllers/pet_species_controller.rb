class PetSpeciesController < ApplicationController
  before_action :set_pet_species, only: %i[ show edit update destroy ]

  # GET /pet_species or /pet_species.json
  def index
    @pet_species = PetSpecies.all
  end

  # GET /pet_species/1 or /pet_species/1.json
  def show
  end

  # GET /pet_species/new
  def new
    @pet_species = PetSpecies.new
  end

  # GET /pet_species/1/edit
  def edit
  end

  # POST /pet_species or /pet_species.json
  def create
    @pet_species = PetSpecies.new(name: params["pet_species"]["name"])

    respond_to do |format|
      if @pet_species.save
        format.html { redirect_to "/pet_species/#{@pet_species.id}", notice: "Pet specy was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pet_species/1 or /pet_species/1.json
  def update
    respond_to do |format|
      if @pet_species.update(name: params["pet_species"]["name"])
        format.html { redirect_to @pet_species, notice: "Pet specy was successfully updated." }
        format.json { render :show, status: :ok, location: @pet_species }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pet_species.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pet_species/1 or /pet_species/1.json
  def destroy
    @pet_species.destroy!

    respond_to do |format|
      format.html { redirect_to pet_species_path, status: :see_other, notice: "Pet specy was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet_species
      @pet_species = PetSpecies.find(params.expect(:id))
    end
end
