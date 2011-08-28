class Admin::GalleriesController < Admin::ApplicationController

  inherit_resources

  def index
    @galleries = Gallery.order('name ASC')
  end

  def show
    @gallery = Gallery.find(params[:id])
  end

  def edit
    @gallery = Gallery.find(params[:id])
  end

  def create
    # assign current user only on create
    # but, allow all admins to edit galleries
    @gallery = current_user.galleries.new(params[:gallery])

    create! do |success, failure|
      success.html { redirect_to gallery_engine.admin_galleries_url }
    end
  end

  def update
    update! do |success, failure|
      success.html { redirect_to gallery_engine.admin_galleries_url }
    end
  end

  def destroy
    destroy! do |success, failure|
      success.html { redirect_to gallery_engine.admin_galleries_url }
    end
  end

  protected

    #def begin_of_association_chain
      #current_user
    #end
end
