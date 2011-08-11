class PostsController < ApplicationController

  def index
    @posts          = Post.order('published_at DESC').
                            where('published_at IS NOT NULL')
  end

  def show
    @post           = Post.where('published_at IS NOT NULL').find(params[:id])
    @comments       = @post.comments.where({:approved => true})
    @comment        = Comment.new
  end
end
