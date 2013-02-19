Sojourn::Application.routes.draw do
  root :to => 'articles#index'
  resources :articles
  resources :tags
end
