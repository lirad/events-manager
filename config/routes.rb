Rails.application.routes.draw do
  resources :events
  
  resources :event_atendees do
    match '/join', to: 'event_atendees#join_event', via: :post, on: :collection
  end
  
  devise_for :users, :controllers => {registrations: 'registrations'}

  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "events#index"
end
