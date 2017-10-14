Rails.application.routes.draw do
  resources :productquoteunregis
  resources :productquotes
  resources :quotes
  resources :products
  resources :quoteunregistereds
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
