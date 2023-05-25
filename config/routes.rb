Rails.application.routes.draw do
  get 'bookmarks/create'
  get 'lists/index'
  get 'movies/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists, only: %w[index show new create] do
    resources :bookmarks, only: :create
  end
end
