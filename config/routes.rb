Rails.application.routes.draw do
  devise_for :users

  root to: "jobs#index"

  resources :posts do
    resources :comments
  end
  resources :jobs
end
