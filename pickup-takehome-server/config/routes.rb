Rails.application.routes.draw do
  scope :api do
    resources :pickups, only: [:create]
  end
end
