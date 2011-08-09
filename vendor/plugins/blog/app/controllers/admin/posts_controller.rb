class Admin::PostsController < Admin::ApplicationController

  inherit_resources

  #def index
    #@posts = current_user.posts.order('created_at DESC').
      #paginate(:page => params[:page], :per_page => 15)
  #end

  def create
    create! do |success, failure|
      success.html { redirect_to blog.admin_posts_url }
    end
  end

  def update
    update! do |success, failure|
      success.html { redirect_to blog.admin_posts_url }
    end
  end

  def destroy
    destroy! do |success, failure|
      success.html { redirect_to blog.admin_posts_url }
    end
  end

  protected

    def begin_of_association_chain
      current_user
    end
end
