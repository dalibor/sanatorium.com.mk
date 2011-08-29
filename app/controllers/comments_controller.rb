class CommentsController < ApplicationController

  def create
    @post            = Post.find(params[:post_id])
    @comment         = @post.comments.new(params[:comment])
    @comment.request = request

    if @comment.save
      redirect_to post_path(@post)
      flash[:notice] = "Your comment was successfully created"
    else
      flash[:error] = "Please correct invalid fields in the form"
      render 'new'
    end
  end

end
