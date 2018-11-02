Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: "users/registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users do
    resources :profiles
  end

  resources :profiles

  resources :groups, param: :code do
    resources :members
  end

  resources :members

  root "groups#landing"
end
