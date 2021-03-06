Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "customers#index"
  resources :customers, only: [:new, :create, :index, :show, :destroy, :edit, :update] do
  end
end
