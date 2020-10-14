Rails.application.routes.draw do
  resources :event_atendees
  resources :events
  devise_for :users, :controllers => {registrations: 'registrations'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "events#index"
end
