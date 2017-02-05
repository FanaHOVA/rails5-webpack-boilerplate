Rails.application.routes.draw do
  devise_for :users
  root 'users#index'

  resources :user
  
  get 'angular' => 'angular#index'
end
