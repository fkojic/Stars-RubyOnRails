Rails.application.routes.draw do

  get 'admins/index'

  get 'admins/report_pictures'

  get 'admins/report_users'

  get 'admins/users'

  devise_for :users, controllers: {registrations: "registrations"}
  devise_scope :user do
  	get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  resources :posts
  resources :users
  
  root "posts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
