Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:show]

  get 'hello/index' => 'hello#index'
  get 'hello/link' => 'hello#link'
  get 'hello/enjoy' => 'hello#enjoy'

  resources :tweets do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end

resources :relationships, only: [:create, :destroy]
resources :users, :only => [:index, :show]
root "tweets#index"
resources :messages, :only => [:create]
resources :rooms, :only => [:create, :show, :index]


end