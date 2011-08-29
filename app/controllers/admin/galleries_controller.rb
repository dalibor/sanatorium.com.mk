class Admin::GalleriesController < Admin::ApplicationController

  inherit_resources

  def index
    @galleries = Gallery.paginate(:page => params[:page], :per_page => 10)
  end

  def create
    # assign current user only on create
    # but, allow all admins to edit galleries
    @gallery = current_user.galleries.new(params[:gallery])

    create! do |success, failure|
      success.html { redirect_to admin_galleries_url }
    end
  end

  def update
    update! do |success, failure|
      success.html { redirect_to admin_galleries_url }
    end
  end

  def destroy
    destroy! do |success, failure|
      success.html { redirect_to admin_galleries_url }
    end
  end
end
