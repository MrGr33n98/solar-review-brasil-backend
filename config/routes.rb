Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # API Routes
  namespace :api do
    namespace :v1 do
      resources :companies, only: [:index, :show]
      resources :reviews, only: [:index, :show]
      resources :page_functions, only: [:index, :show, :update] do
        get ':key', to: 'page_functions#show', on: :collection
        patch ':key', to: 'page_functions#update', on: :collection
        put ':key', to: 'page_functions#update', on: :collection
      end
    end
  end
  # Health check endpoint
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root to: proc { [200, {}, ['Solar Review Backend API']] }
end

# Companies
# GET http://localhost:3002/api/v1/companies
# GET http://localhost:3002/api/v1/companies/:id

# Reviews
# GET http://localhost:3002/api/v1/reviews
# GET http://localhost:3002/api/v1/reviews?company_id=1
# GET http://localhost:3002/api/v1/reviews/:id

# PageFunctions
# GET http://localhost:3002/api/v1/page_functions
# GET http://localhost:3002/api/v1/page_functions/:key
# PATCH/PUT http://localhost:3002/api/v1/page_functions/:key
