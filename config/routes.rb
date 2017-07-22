Rails.application.routes.draw do
  scope :api, defaults: { format: :json } do
    resources :states, only: [:index, :show]
    resources :cities, only: [:index, :show]
  end
end
