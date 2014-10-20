Rails.application.routes.draw do


  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)
scope "api", defaults: {format: :json} do

  resources :users
  resources :students
  resources :teachers
  resources :schools
  resources :messages
  resources :parents
  resources :classrooms
end
  
  root 'application#index'

  get "*path.html" => "application#index", :layout => 0
  get "*path" => "application#index"

end
