class Admin::PostsController < Admin::ApplicationController

  inherit_resources

  def index
    @posts = Post.order('created_at DESC').
      paginate(:page => params[:page], :per_page => 10)
  end

  def create
    # assign current user only on create
    # but, allow all admins to edit posts
    @post = current_user.posts.new(params[:post])

    create!
  end
end
