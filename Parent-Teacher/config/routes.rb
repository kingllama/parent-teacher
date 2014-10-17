Rails.application.routes.draw do
  resources :users
  resources :students
  resources :teachers
  resources :school
  resources :messages
  resources :parents
  resources :classrooms
end
