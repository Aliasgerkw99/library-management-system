Rails.application.routes.draw do
  get 'messages/index'
  resources :books do 
    resources :reports 
  end
  devise_for :admins

  root 'home#index'
  get "admins/id", to: "admins#destroy"
  get "students/id", to: "students#destroy"
  get "admins/edit",to: "admins#edit"
  get "students/notification",to: "students#notification"

  resources :admins
  devise_for :students
  resources :students do 
    resources :reports
  end
  resources :reports
  resources :messages
  resources :charges, only: [:new, :create]
end
