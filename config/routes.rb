Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "up" => "rails/health#show", as: :rails_health_check

  resources :companies, only: [:new, :create, :index, :show, :edit, :update] do
    resources :users, only: [:new, :create, :index, :show, :edit] do

    end
  end
end
