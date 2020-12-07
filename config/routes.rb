Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :mocktails, only: [:index, :show, :update, :edit]
      resources :favorites
      resources :users, only: [:index, :new, :create]
    end
  end


end
