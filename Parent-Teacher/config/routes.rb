Rails.application.routes.draw do

  root :to => 'static#index'
  # get '*path' => 'static#index'

  resources :users
  resources :students
  resources :teachers
  resources :schools
  resources :messages
  resources :parents
  resources :classrooms
end
