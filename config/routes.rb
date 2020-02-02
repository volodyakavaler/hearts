Rails.application.routes.draw do
  resources :desease_records
  resources :points
  resources :lifeanamneses
  root 'welcome#index'
  resources :sicks do
    collection do
      get :search
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
