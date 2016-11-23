Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :controller => 'home', :action => 'index'

  get '/metrics', to: 'metrics#index'

  namespace :api do
    namespace :v1 do
      resources :failures, only: [:create, :update, :index, :show]
      resources :metrics, only: [:index]
      resources :categories, only: [:create]
    end
  end
end
