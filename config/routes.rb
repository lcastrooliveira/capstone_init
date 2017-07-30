Rails.application.routes.draw do
  scope :api, defaults: { format: :json } do
    resources :states
    resources :cities
  end
  get '/home', to: 'home#index'
  root 'home#index'
end
