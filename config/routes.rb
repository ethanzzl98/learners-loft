Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :lessons, only: [:index, :create, :show, :update, :destroy] do
        resources :bookings, only: [:create, :show, :update]
      end
    end
  end
end
