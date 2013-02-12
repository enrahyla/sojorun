Sojourn::Application.routes.draw do

  get "tags/index"

  get "tags/show"

  get "welcome/about"

  get "welcome/contact"

  # root :to => 'welcome#index'
  resources :articles

  resources :tags
end
