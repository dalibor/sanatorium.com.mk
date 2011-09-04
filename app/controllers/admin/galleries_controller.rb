class Admin::GalleriesController < Admin::ApplicationController

  inherit_resources

  before_filter :load_gallery, :only => [:move_lower, :move_higher]

  def index
    @galleries = Gallery.order('position ASC')
  end

  def create
    # assign current user only on create
    # but, allow all admins to edit galleries
    @gallery = current_user.galleries.new(params[:gallery])

    create!
  end

  def move_lower
    @gallery.move_lower
    flash[:notice] = 'Gallery was successfully moved lower.'
    redirect_to admin_galleries_url
  end

  def move_higher
    @gallery.move_higher
    flash[:notice] = 'Gallery was successfully moved higher.'
    redirect_to admin_galleries_url
  end

  private

    def load_gallery
      @gallery = Gallery.find(params[:id])
    end
end
