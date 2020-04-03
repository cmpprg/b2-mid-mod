Rails.application.routes.draw do
  # mechanics
  get '/mechanics', to: 'mechanics#index'
  #amusement_parks
  get '/amusement_parks/:id', to: 'amusement_parks#show'
end
