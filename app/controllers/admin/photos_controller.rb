class Admin::PhotosController < Admin::ApplicationController

  inherit_resources
  nested_belongs_to :gallery

  before_filter :load_photo, :only => [:move_lower, :move_higher]

  def index
    @gallery = Gallery.find(params[:gallery_id])
    @photos = @gallery.photos.order('position ASC').
      paginate(:page => params[:page], :per_page => 10)
  end

  def move_lower
    @photo.move_lower
    flash[:notice] = 'Photo was successfully moved lower.'
    redirect_to admin_gallery_photos_url(@gallery)
  end

  def move_higher
    @photo.move_higher
    flash[:notice] = 'Photo was successfully moved higher.'
    redirect_to admin_gallery_photos_url(@gallery)
  end

  private

    def load_photo
      @gallery = Gallery.find(params[:gallery_id])
      @photo = @gallery.photos.find(params[:id])
    end
end
