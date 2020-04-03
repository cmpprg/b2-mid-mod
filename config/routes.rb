Rails.application.routes.draw do
  # mechanics
  get '/mechanics', to: 'mechanics#index'
  get '/mechanics/:id', to: 'mechanics#show'
  #amusement_parks
  get '/amusement_parks/:id', to: 'amusement_parks#show'
end
