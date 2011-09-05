class PostsController < ApplicationController

  def index
    @posts          = Post.order('published_at DESC').
                            where('published_at IS NOT NULL').
                            paginate(:per_page => 10, :page => params[:page])
  end

  def show
    @post           = Post.where('published_at IS NOT NULL').find(params[:id])
    @comments       = @post.comments.where({:approved => true})
    @comment        = Comment.new
  end
end
