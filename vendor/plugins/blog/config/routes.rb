Blog::Engine.routes.draw do

  resources :posts, :only => [:index, :show] do
    resources :comments, :only => [:create]
  end

  namespace :admin do
    resources :posts
    resources :comments
  end

end
