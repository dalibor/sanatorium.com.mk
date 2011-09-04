class GalleriesController < ApplicationController

  def index
    @galleries = Gallery.order('position DESC')
  end

  def show
    @gallery = Gallery.find(params[:id])
    @photos  = @gallery.photos.order('position ASC')
  end
end
