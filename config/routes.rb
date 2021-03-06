Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:new, :create]
    # lists/:id/bookmark
  end
  resources :bookmarks, only: [:destroy]
  resources :movies, only: [:index]

  resources :lists, only: [:show] do
    resources :reviews, only: [:create]
  end

end
