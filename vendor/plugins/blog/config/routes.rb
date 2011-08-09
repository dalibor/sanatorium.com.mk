Blog::Engine.routes.draw do
  resources :posts, :only => [:index]

  namespace :admin do
    resources :posts
  end
end
