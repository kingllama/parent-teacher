Rails.application.routes.draw do


  root to: 'application#index'

  resource :session, only: [:new, :create, :destroy]

  resources :users
  resources :students
  resources :teachers
  resources :schools
  resources :messages
  resources :parents
  resources :classrooms

  


end
