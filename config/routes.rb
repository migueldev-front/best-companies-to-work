Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "up" => "rails/health#show", as: :rails_health_check

  resources :companies, only: [:index, :show, :new, :create, :edit, :update] do
    resources :users, only: [:index, :show, :new, :create, :edit] do
      resources :reviews, only: [:index, :show, :new, :create, :update, ] do
      end
    end
  end
end
