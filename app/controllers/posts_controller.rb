class PostsController < ApplicationController

  def index
    @posts = Post.all
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to :back
    end
  end


private

  def post_params
    params.require(:post).permit(:description)
  end

end
