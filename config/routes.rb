Rails.application.routes.draw do
  devise_for :users, controllers:{
    sessions:'users/sessions',
    registrations: 'users/registrations'
  }
  resources :tasks
  root 'tasks#index'
  put "tasks/update"
end
