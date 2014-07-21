class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def index
    @posts = Post.all
  end

  def create
    @post = current_user.posts.create(post_params)
    redirect_to :posts
  end

  private
  def post_params
    params.require(:post).permit(
      :title, 
      :body,
      :region_id,
    )
  end
end
