Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }, path: :auth
  resources :welcome
  resources :users
  resources :students

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "welcome#index"
end
