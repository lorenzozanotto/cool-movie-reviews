Rails.application.routes.draw do

  devise_for :users
  resources :movies do
  	resources :reviews, except: [:show, :index]
  end
  
  # Index route => Movies Page
  root 'movies#index'

end
