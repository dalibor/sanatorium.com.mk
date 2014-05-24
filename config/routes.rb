Sanatorium::Application.routes.draw do


  # Admin routes have prioirty
  #
  namespace :admin do
    root :to => 'welcome#index'
    resources :users, :except => [:show, :destroy]
    resources :posts
    resources :galleries do
      member do
        put :move_higher
        put :move_lower
      end
      resources :photos do
        member do
          put :move_higher
          put :move_lower
        end
      end
    end
    resources :downloads do
      member do
        put :move_higher
        put :move_lower
      end
    end
    resources :releases do
      resources :songs do
        member do
          put :move_higher
          put :move_lower
        end
      end
    end
    resources :pages, :except => [:new]
    resources :attachments
  end


  # Application routes
  scope "(:lang)", :locale => /mk|en/ do
    get '/login', :to => 'sessions#new', :as => 'login'
    get '/band', :to => 'pages#show', :id => 'band'

    resource :session, :only => [:new, :create, :destroy]
    resources :posts, :only => [:show]
    get "posts(/page/:page)" => "posts#index", :as => :posts
    resources :downloads, :only => [:index]
    resources :galleries, :only => [:index, :show]
    resources :releases, :only => [:index, :show]

    root :to => 'welcome#index'
  end

  match '/:lang' => "welcome#index"
end
