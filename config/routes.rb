Rails.application.routes.draw do
  get '/pet_species', to: 'pet_species#index'
  get '/pet_species/new', to: 'pet_species#new'
  get '/pet_species/:id/edit', to: 'pet_species#edit'
  get '/pet_species/:id', to: 'pet_species#show'
  post '/pet_species', to: 'pet_species#create'
  delete '/pet_species/:id', to: 'pet_species#destroy'

  get 'my_pets', to: 'pets#my_pets'
  
  scope '/pet_species/:pet_species_id', as: :pet_species do
    resources :pet_breeds
  end
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  root "pages#home"

  resources :pets
  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
