class Admin::GalleriesController < Admin::ApplicationController

  inherit_resources

  def index
    @galleries = Gallery.order('featured DESC, created_at DESC').
      page(params[:page]).per_page(10)
  end

  def create
    # assign current user only on create
    # but, allow all admins to edit galleries
    @gallery = current_user.galleries.new(params[:gallery])

    create!
  end
end
