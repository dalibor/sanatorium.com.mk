class Admin::CommentsController < Admin::ApplicationController

  inherit_resources

  def create
    @comment = Comment.new(params[:comment], :without_protection => true)
    create! do |success, failure|
      success.html { redirect_to blog.admin_comments_url }
    end
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update_attributes(params[:comment], :without_protection => true)
    update! do |success, failure|
      success.html { redirect_to blog.admin_comments_url }
    end
  end

  def destroy
    destroy! do |success, failure|
      success.html { redirect_to blog.admin_comments_url }
    end
  end
end
