Rails.application.routes.draw do
  namespace :api , defaults: { format: :json} do
    resource :session, only: [:create, :destroy]
    resources :users, only: [:create, :show, :update, :index]
    resources :memes, only: [:create, :show, :index]
    resources :likes, only: [:create, :destroy]
    resources :matches, only: [:create, :destroy, :index, :show]
    resources :messages, only: [:index, :create]
  end
end
