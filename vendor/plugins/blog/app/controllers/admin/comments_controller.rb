class Admin::CommentsController < Admin::ApplicationController

  inherit_resources

  def create
    create! do |success, failure|
      success.html { redirect_to blog.admin_comments_url }
    end
  end

  def update
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
