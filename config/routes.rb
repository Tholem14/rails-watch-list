Rails.application.routes.draw do
  root "lists#index"
  resources :lists, except: :index do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: :destroy
end
