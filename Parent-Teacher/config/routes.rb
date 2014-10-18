Rails.application.routes.draw do

root 'application#index'

get "*path.html" => "application#index", :layout => 0
get "*path" => "application#index"


  resources :users
  resources :students
  resources :teachers
  resources :schools
  resources :messages
  resources :parents
  resources :classrooms
end
