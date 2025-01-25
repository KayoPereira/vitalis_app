class PetsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_pet, only: [:show, :edit, :update, :destroy]
  
  def index
    @pets = Pet.all
  end

  def my_pets
    @pets = current_user.pets
    render :index
  end

  def show
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    if @pet.save
      redirect_to pet_path(@pet)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @pet.update(pet_params)
    if @pet.save
      redirect_to pet_path(@pet)
    else
      render :new
    end
  end

  def destroy
    if @pet.user == current_user
      @pet.destroy
      redirect_to pets_path
    else
      redirect_to pets_path, message: "Você não tem permissão para remover esse pet."
    end
  end

  private

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :birthdate, :pet_species_id, :pet_breed_id, :user_id, :photo)
  end
end
