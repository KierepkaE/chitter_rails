Rails.application.routes.draw do
  resources :chits
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'chits#index'
end
