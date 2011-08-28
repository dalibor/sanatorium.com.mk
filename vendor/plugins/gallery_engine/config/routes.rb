GalleryEngine::Engine.routes.draw do
  #resources :galleries, :only => [:index, :show]# do
    #resources :photos, :only => [:create]
  #end

  namespace :admin do
    resources :galleries
  end
end
