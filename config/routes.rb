Rails.application.routes.draw do
  resources :projects

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'landing#index', as: :landing
end
