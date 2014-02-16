class WelcomeController < ApplicationController
  def index
    @posts   = Post.where({:publish => true}).order('published_at DESC').limit(4)
    @video   = Page.find_by_key('video')
    @photos  = Photo.featured
  end
end
