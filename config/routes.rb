Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'cocktails', to: 'cocktails#index'
  # get 'cocktails/new', to: 'cocktails#new', as: :new
  # post 'cocktails', to: 'cocktails#create'
  # get 'cocktails/:id', to: 'cocktails#show', as: :show
  # get 'cocktails/:cocktail_id/doses/new', to: 'doses#new', as: :new_dose

  resources :cocktails, only: [:index, :new, :create, :show, :destroy] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: :destroy
end
