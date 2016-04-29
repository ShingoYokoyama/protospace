Rails.application.routes.draw do
  resources :prototypes do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
    collection do
      get :popular_index
    end
  end

  root "prototypes#index"

  devise_for :users
  resources :users, only: [:show, :edit, :update]
  resources :tags, only: [:index, :show]

end
