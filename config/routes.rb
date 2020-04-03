Rails.application.routes.draw do
  # mechanics
  get '/mechanics', to: 'mechanics#index'
  get '/mechanics/:id', to: 'mechanics#show'
  #amusement_parks
  get '/amusement_parks/:id', to: 'amusement_parks#show'
  #ride_mechanics
  post "mechanics/:mechanic_id/rides/create", to: 'ride_mechanics#create'
end
