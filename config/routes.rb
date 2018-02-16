Rails.application.routes.draw do
  namespace :api , defaults: { format: :json} do
    resource :session, only: [:create, :destroy]
    resources :users, only: [:create, :show, :update]
    resources :memes, only: [:create, :show, :index]
  end
end
