Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:new, :create]
    # lists/:id/bookmark
  end
  resources :bookmarks, only: [:destroy]
end
