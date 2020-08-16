Rails.application.routes.draw do
  resources :events
  get '/', to: 'events#index'

  mount ActionCable.server => "/events"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
