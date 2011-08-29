class Admin::CommentsController < Admin::ApplicationController

  inherit_resources

  def create
    @comment = Comment.new(params[:comment], :without_protection => true)
    create!
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update_attributes(params[:comment], :without_protection => true)
    update!
  end
end
