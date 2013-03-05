Sojourn::Application.routes.draw do
  get "author_sessions/new"

  root :to => 'articles#index'
  resources :articles
  resources :tags
  resources :authors
  resources :author_sessions,
            only: [ :new, :create, :destroy ]

  match 'login' => 'author_sessions#new'
  match 'logout' => 'author_sessions#destroy'
end
