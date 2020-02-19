Rails.application.routes.draw do
  resources :heart_points
  resources :heart_results
  resources :heart_programs
  resources :devices
  resources :desease_record_notes
  resources :desease_records
  resources :lifeanamneses
  root 'welcome#index'
  resources :sicks do
    collection do
      get :search
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
