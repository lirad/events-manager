Rails.application.routes.draw do
  resources :event_atendees
  
  resources :events do
    match '/join', to: 'events#join_event', via: :post, on: :collection
  end

  devise_for :users, :controllers => {registrations: 'registrations'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "events#index"
end
