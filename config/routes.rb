Rails.application.routes.draw do
  resources :assigneds
  resources :request_offers
  resources :broadcasts
  resources :community_members
  resources :communities
  resources :members

  post '/login', to: 'members#login'

  get '/requests', to: 'request_offers#requests'
  get '/offers', to: 'request_offers#offers'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
