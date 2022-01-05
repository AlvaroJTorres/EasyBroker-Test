Rails.application.routes.draw do
  root 'properties#index'
  resources :properties do
    post 'create_contact', on: :member
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
