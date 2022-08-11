Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      post 'login', to: 'sessions#login', as: :login
      get 'lessons/mylessons', to: 'lessons#mylessons'
      resources :lessons, only: [:index, :create, :show, :update, :destroy] do
        resources :bookings, only: [:create]
      end

      resources :bookings, only: [:index, :destroy, :show]
    end
  end
end
