Rails.application.routes.draw do
  resources :products
  get 'simple_pages/abouot'
  get 'simple_pages/contact'
  root 'simple_pages#index'
  get 'simple_pages/index'
  get 'simple_pages/landing_page'
  post 'simple_pages/thank_you'
  resources :orders, only: [:index, :show, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
